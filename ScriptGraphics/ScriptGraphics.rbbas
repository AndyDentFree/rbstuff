#tag Class
Protected Class ScriptGraphics
	#tag Method, Flags = &h0
		Sub UseImages(source as Picture, dest as Canvas, mask as Picture=nil)
		  mSource = source
		  mDest = dest
		  mMask = mask
		  'if mDest.Backdrop=nil then mDest.Backdrop = NewPicture(mDest.Width, mDest.Height, 32)
		  'mSurface = mDest.Backdrop.RGBSurface
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourcePicture() As Picture
		  return mSource
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DestCanvas() As Canvas
		  return mDest
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillDest(FillColor as Color)
		  dim saveColor as Color = mDest.Graphics.ForeColor
		  mDest.Graphics.ForeColor = FillColor
		  mDest.Graphics.FillRect 0,0,mDest.Width, mDest.Height
		  mDest.Graphics.ForeColor = saveColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyImage()
		  mDest.Graphics.DrawPicture mSource, 0, 0, mDest.Width, mDest.Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPixel(x as integer, y as integer, c as Color)
		  mDest.Graphics.Pixel(x,y) = c
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPixel(x as integer, y as integer) As Color
		  ' WARNING in RBScript in 5.5.2 get crashes if try access parts of Color, eg c.Red
		  ' see the overloads of this function
		  return mDest.Graphics.Pixel(x,y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Width() As integer
		  return mDest.width
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Height() As integer
		  return mDest.height
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Bold(assigns setb as boolean)
		  mDest.Graphics.Bold = setB
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub italic(assigns setI as boolean)
		  mDest.Graphics.Italic = setI
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Bold() As boolean
		  return mDest.Graphics.Bold
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Italic() As boolean
		  return mDest.Graphics.Italic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearRect(x as integer, y as integer, Width as integer, Height as integer)
		  mDest.Graphics.ClearRect x, y, Width, Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLine(x1 as integer, y1 as integer, x2 as integer, y2 as integer)
		  mDest.Graphics.DrawLine x1, y1, x2, y2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawString(s as string, x  as integer, y as integer, WrapWidth as integer=-1)
		  if WrapWidth = -1 then
		    mDest.Graphics.DrawString s, x, y
		  else
		    mDest.Graphics.DrawString s, x, y, WrapWidth
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ForeColor(assigns c as Color)
		  mDest.Graphics.ForeColor = c
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ForeColor() As Color
		  return mDest.Graphics.ForeColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextSize(assigns i as integer)
		  mDest.Graphics.TextSize = i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextSize() As integer
		  return mDest.Graphics.TextSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextFont(assigns s as string)
		  mDest.Graphics.TextFont = s
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextFont() As string
		  return mDest.Graphics.TextFont
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPixel(x as integer, y as integer, Byref r as integer, ByRef g as integer, ByRef b as integer)
		  dim c as color
		  c =  mDest.Graphics.Pixel(x,y)
		  r = c.Red
		  g = c.Green
		  b = c.Blue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPixel(x as integer, y as integer, Byref h as double, ByRef s as double, ByRef v as double)
		  dim c as color
		  c =  mDest.Graphics.Pixel(x,y)
		  h = c.Hue
		  s = c.saturation
		  v = c.value
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected mSource As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mDest As Canvas
	#tag EndProperty

	#tag Property, Flags = &h0
		mMask As Picture// can safely leave nil
	#tag EndProperty

	#tag Property, Flags = &h0
		mSurface As RGBSurface
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
