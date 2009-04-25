#tag Class
Protected Class ImageManager
	#tag Method, Flags = &h0
		Sub RegisterImage(keyName as string, inImage as Picture)
		  mImages.Value(keyName) = inImage
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ImageNamed(lookupKey as string) As Picture
		  return mImages.Value(LookupKey)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ForgetImage(lookupKey as string)
		  mImages.Remove LookupKey
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mImages = new Dictionary
		End Sub
	#tag EndMethod


	#tag Note, Name = About
		Provides services tracking images by name
		
	#tag EndNote


	#tag Property, Flags = &h1
		Protected mImages As dictionary
	#tag EndProperty


End Class
#tag EndClass
