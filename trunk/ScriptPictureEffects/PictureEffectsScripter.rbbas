#tag Class
Protected Class PictureEffectsScripter
	#tag Method, Flags = &h0
		Sub UseImages(source as Picture, dest as Picture, mask as Picture=nil)
		  if dest=nil then
		    MsgBox "Must pass a destCanvas in which has a backdrop"
		    return
		  end if
		  mSource = source
		  mDestPicture = dest ' remember for CascadeEffects
		  mDest = dest.Graphics
		  mMask = mask
		  mSurface = dest.RGBSurface
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SourcePicture() As Picture
		  return mSource
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DestGraphics() As Graphics
		  return mDest
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillDest(FillColor as Color)
		  dim saveColor as Color = mDest.ForeColor
		  mDest.ForeColor = FillColor
		  mDest.FillRect 0,0,mDest.Width, mDest.Height
		  mDest.ForeColor = saveColor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyImage()
		  mDest.DrawPicture mSource, 0, 0, mDest.Width, mDest.Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Blur()
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Blur(mSource, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "Blur"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Brightness(value as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Brightness(mSource, Value, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height  
		  #else
		    NeedPictureEffects "Brightness"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPixel(x as integer, y as integer, c as Color)
		  'mDest.Pixel(x,y) = c
		  mSurface.Pixel(x,y) = c
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPixel(x as integer, y as integer) As Color
		  ' WARNING in RBScript in 5.5.2 get crashes if try access parts of Color, eg c.Red
		  ' see the overloads of this function or use the R, G and B functions
		  return mDest.Pixel(x,y)
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
		  mDest.Bold = setB
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Italic(assigns setI as boolean)
		  mDest.Italic = setI
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Bold() As boolean
		  return mDest.Bold
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Italic() As boolean
		  return mDest.Italic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ClearRect(x as integer, y as integer, Width as integer, Height as integer)
		  mDest.ClearRect x, y, Width, Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawLine(x1 as integer, y1 as integer, x2 as integer, y2 as integer)
		  mDest.DrawLine x1, y1, x2, y2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawString(s as string, x  as integer, y as integer, WrapWidth as integer)
		  mDest.DrawString s, x, y, WrapWidth
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ForeColor(assigns c as Color)
		  mDest.ForeColor = c
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ForeColor() As Color
		  return mDest.ForeColor
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextSize(assigns i as integer)
		  mDest.TextSize = i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextSize() As integer
		  return mDest.TextSize
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextFont(assigns s as string)
		  mDest.TextFont = s
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextFont() As string
		  return mDest.TextFont
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPixel(x as integer, y as integer, Byref r as integer, ByRef g as integer, ByRef b as integer)
		  dim c as color
		  c =  mDest.Pixel(x,y)
		  r = c.Red
		  g = c.Green
		  b = c.Blue
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetPixel(x as integer, y as integer, Byref h as double, ByRef s as double, ByRef v as double)
		  dim c as color
		  c =  mDest.Pixel(x,y)
		  h = c.Hue
		  s = c.saturation
		  v = c.value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Random(minR as integer, maxR as integer) As integer
		  return mRandom.InRange(minR, maxR)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  mRandom = new Random
		  PI = kPI
		  ' use property because constants not exposed to RBScript
		  
		  ' 140 web color names with their respective RGB values
		  ' as per http://www.oreilly.com/catalog/wdnut/excerpt/color_names.html
		  
		  
		  aliceblue = &cF0F8FF     ' RGB(240,248,255)
		  antiquewhite = &cFAEBD7     ' RGB(250,235,215)
		  aqua = &c00FFFF     ' RGB(0,255,255)
		  aquamarine = &c7FFFD4     ' RGB(127,255,212)
		  azure = &cF0FFFF     ' RGB(240,255,255)
		  beige = &cF5F5DC     ' RGB(245,245,220)
		  bisque = &cFFE4C4     ' RGB(255,228,196)
		  black = &c000000     ' RGB(0,0,0)
		  blanchedalmond = &cFFEBCD  ' RGB(255,255,205)
		  blue = &c0000FF     ' RGB(0,0,255)
		  blueviolet = &c8A2BE2     ' RGB(138,43,226)
		  brown = &cA52A2A     ' RGB(165,42,42)
		  burlywood = &cDEB887     ' RGB(222,184,135)
		  cadetblue = &c5F9EA0     ' RGB(95,158,160)
		  chartreuse = &c7FFF00     ' RGB(127,255,0)
		  chocolate = &cD2691E     ' RGB(210,105,30)
		  coral = &cFF7F50     ' RGB(255,127,80)
		  cornflowerblue = &c6495ED     ' RGB(100,149,237)
		  cornsilk = &cFFF8DC     ' RGB(255,248,220)
		  crimson = &cDC143C     ' RGB(220,20,60)
		  cyan = &c00FFFF     ' RGB(0,255,255)
		  darkblue = &c00008B     ' RGB(0,0,139)
		  darkcyan = &c008B8B     ' RGB(0,139,139)
		  darkgoldenrod = &cB8860B     ' RGB(184,134,11)
		  darkgray = &cA9A9A9     ' RGB(169,169,169)
		  darkgreen = &c006400     ' RGB(0,100,0)
		  darkkhaki = &cBDB76B     ' RGB(189,183,107)
		  darkmagenta = &c8B008B     ' RGB(139,0,139)
		  darkolivegreen = &c556B2F     ' RGB(85,107,47)
		  darkorange = &cFF8C00     ' RGB(255,140,0)
		  darkorchid = &c9932CC     ' RGB(153,50,204)
		  darkred = &c8B0000     ' RGB()
		  darksalmon = &cE9967A     ' RGB(233,150,122)
		  darkseagreen = &c8FBC8F     ' RGB(143,188,143)
		  darkslateblue = &c483D8B     ' RGB(72,61,139)
		  darkslategray = &c2F4F4F     ' RGB(47,79,79)
		  darkturquoise = &c00CED1     ' RGB(0,206,209)
		  darkviolet = &c9400D3     ' RGB(148,0,211)
		  deeppink = &cFF1493     ' RGB(255,20,147)
		  deepskyblue = &c00BFFF     ' RGB(0,191,255)
		  dimgray = &c696969     ' RGB(105,105,105)
		  dodgerblue = &c1E90FF     ' RGB(30,144,255)
		  firebrick = &cB22222     ' RGB(178,34,34)
		  floralwhite = &cFFFAF0     ' RGB(255,250,240)
		  forestgreen = &c228B22     ' RGB(34,139,34)
		  fuchsia = &cFF00FF     ' RGB(255,0,255)
		  gainsboro = &cDCDCDC     ' RGB(220,220,220)
		  ghostwhite = &cF8F8FF     ' RGB(248,248,255)
		  gold = &cFFD700     ' RGB(255,215,0)
		  goldenrod = &cDAA520     ' RGB(218,165,32)
		  gray = &c808080     ' RGB(128,128,128)
		  green = &c008000     ' RGB(0,128,0)
		  greenyellow = &cADFF2F     ' RGB(173,255,47)
		  honeydew = &cF0FFF0     ' RGB(240,255,240)
		  hotpink = &cFF69B4     ' RGB(255,105,180)
		  indianred = &cCD5C5C     ' RGB(205,92,92)
		  indigo = &c4B0082     ' RGB(75,0,130)
		  ivory = &cFFFFF0   ' RGB(255,240,240)
		  khaki = &cF0E68C     ' RGB(240,230,140)
		  lavender = &cE6E6FA     ' RGB(230,230,250)
		  lavenderblush = &cFFF0F5     ' RGB(255,240,245)
		  lawngreen = &c7CFC00     ' RGB(124,252,0)
		  lemonchiffon = &cFFFACD     ' RGB(255,250,205)
		  lightblue = &cADD8E6     ' RGB(173,216,230)
		  lightcoral = &cF08080     ' RGB(240,128,128)
		  lightcyan = &cE0FFFF    ' RGB(224,255,255)
		  lightgoldenrodyellow = &cFAFAD2     ' RGB(250,250,210)
		  lightgreen = &c90EE90     ' RGB(144,238,144)
		  lightgrey = &cD3D3D3     ' RGB(211,211,211)
		  lightpink = &cFFB6C1     ' RGB(255,182,193)
		  lightsalmon = &cFFA07A     ' RGB(255,160,122)
		  lightseagreen = &c20B2AA     ' RGB(32,178,170)
		  lightskyblue = &c87CEFA     ' RGB(135,206,250)
		  lightslategray = &c778899     ' RGB(119,136,153)
		  lightsteelblue = &cB0C4DE     ' RGB(176,196,222)
		  lightyellow = &cFFFFE0     ' RGB(255,255,224)
		  lime = &c00FF00     ' RGB(0,255,0)
		  limegreen = &c32CD32     ' RGB(50,205,50)
		  linen = &cFAF0E6     ' RGB(250,240,230)
		  magenta = &cFF00FF     ' RGB(255,0,255)
		  maroon = &c800000     ' RGB(128,0,0)
		  mediumaquamarine = &c66CDAA     ' RGB(102,205,170)
		  mediumblue = &c0000CD     ' RGB(0,0,205)
		  mediumorchid = &cBA55D3     ' RGB(186,85,211)
		  mediumpurple = &c9370DB     ' RGB(147,112,219)
		  mediumseagreen = &c3CB371     ' RGB(60,179,113)
		  mediumslateblue = &c7B68EE     ' RGB(123,104,238)
		  mediumspringgreen = &c00FA9A     ' RGB(0,250,154)
		  mediumturquoise = &c48D1CC     ' RGB(72,209,204)
		  mediumvioletred = &cC71585     ' RGB(199,21,133)
		  midnightblue = &c191970     ' RGB(25,25,112)
		  mintcream = &cF5FFFA     ' RGB(245,255,250)
		  mistyrose = &cFFE4E1     ' RGB(255,228,225)
		  moccasin = &cFFE4B5     ' RGB(255,228,181)
		  navajowhite = &cFFDEAD     ' RGB(255,222,173)
		  navy = &c000080     ' RGB(0,0,128)
		  oldlace = &cFDF5E6     ' RGB(253,245,230)
		  olive = &c808000     ' RGB(128,128,0)
		  olivedrab = &c6B8E23     ' RGB(107,142,35)
		  orange = &cFFA500     ' RGB(255,165,0)
		  orangered = &cFF4500     ' RGB(255,69,0)
		  orchid = &cDA70D6     ' RGB(218,112,214)
		  palegoldenrod = &cEEE8AA     ' RGB(238,232,170)
		  palegreen = &c98FB98     ' RGB(152,251,152)
		  paleturquoise = &cAFEEEE    ' RGB(175,238,238)
		  palevioletred = &cDB7093     ' RGB(219,112,147)
		  papayawhip = &cFFEFD5     ' RGB(255,239,213)
		  peachpuffle = &cFFDAB9    ' RGB(255,239,213)
		  peru = &cCD853F     ' RGB(205,133,63)
		  pink = &cFFC0CB     ' RGB(255,192,203)
		  plum = &cDDA0DD     ' RGB(221,160,221)
		  powderblue = &cB0E0E6     ' RGB(176,224,230)
		  purple = &c800080     ' RGB(128,0,128)
		  red = &cFF0000    ' RGB(255,0,0)
		  rosybrown = &cBC8F8F     ' RGB(188,143,143)
		  royalblue = &c4169E1     ' RGB(65,105,225)
		  saddlebrown = &c8B4513     ' RGB(139,69,19)
		  salmon = &cFA8072     ' RGB(250,128,114)
		  sandybrown = &cF4A460     ' RGB(244,164,96)
		  seagreen = &c2E8B57     ' RGB(46,139,87)
		  seashell = &cFFF5EE     ' RGB(255,245,238)
		  sienna = &cA0522D     ' RGB(160,82,45)
		  silver = &cC0C0C0     ' RGB(192,192,192)
		  skyblue = &c87CEEB     ' RGB(135,206,235)
		  slateblue = &c6A5ACD     ' RGB(106,90,205)
		  slategray = &c708090     ' RGB(112,128,144)
		  snow = &cFFFAFA     ' RGB(255,250,250)
		  springgreen = &c00FF7F     ' RGB(0,255,127)
		  steelblue = &c4682B4     ' RGB(70,130,180)
		  tan = &cD2B48C     ' RGB(210,180,140)
		  teal = &c008080     ' RGB(0,128,128)
		  thistle = &cD8BFD8     ' RGB(216,191,216)
		  tomato = &cFD6347     ' RGB(253,99,71)
		  turquoise = &c40E0D0     ' RGB(64,224,208)
		  violet = &cEE82EE     ' RGB(238,130,238)
		  wheat = &cF5DEB3     ' RGB(245,222,179)
		  white = &cFFFFFF     ' RGB(255,255,255)
		  whitesmoke = &cF5F5F5     ' RGB(245,245,245)
		  yellow = &cFFFF00     ' RGB(255,255,0)
		  yellowgreen = &c9ACD32     ' RGB(154,205,50)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PenHeight(n as integer)
		  mDest.PenHeight = n
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PenWidth(n as integer)
		  mDest.PenWidth = n
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextAscent() As integer
		  return mDest.TextAscent
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextHeight() As integer
		  return mDest.TextHeight
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Underline() As boolean
		  return mDest.Underline
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Underline(assigns setU as boolean)
		  mDest.Underline = setU
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawOval(x as integer, y as integer, w as integer, h as integer)
		  mDest.DrawOval x, y, w, h
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawCircle(x as integer, y as integer, r as integer)
		  mDest.DrawOval x, y, r, r
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawPolygon(Points() as integer)
		  mDest.DrawPolygon Points
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRoundRect(x as integer, y as integer, w as integer, h as integer, ovalW as integer, ovalH as integer)
		  mDest.DrawRoundRect x, y, w, h, ovalW, ovalH
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawRect(x as integer, y as integer, w as integer, h as integer)
		  mDest.DrawRect x, y, w, h
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillCircle(x as integer, y as integer, dia as integer)
		  ' remember this is x, y of LHS, if you are using cent
		  mDest.FillOval x, y, dia, dia
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillOval(x as integer, y as integer, w as integer, h as integer)
		  mDest.FillOval x, y, w, h
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillRect(x as integer, y as integer, w as integer, h as integer)
		  mDest.FillRect x, y, w, h
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillRoundRect(x as integer, y as integer, w as integer, h as integer, ovalW as integer, ovalH as integer)
		  mDest.FillRoundRect x, y, w, h, ovalW, ovalH
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillPolygon(Points() as integer)
		  mDest.FillPolygon Points
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NeedPictureEffects(funcname as string)
		  MsgBox funcname+" requires Einhugur's Picture Effects from http://www.einhugur.com/"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ColorFilter(red as integer, green as integer, blue as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture ColorFilter(mSource, red, green, blue, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height  
		  #else
		    NeedPictureEffects "ColorFilter"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Contrast(value as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Contrast(mSource, Value, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height  
		  #else
		    NeedPictureEffects "Contrast"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EdgeDetect()
		  #if kHavePictureEffects=true
		    mDest.DrawPicture EdgeDetect(mSource, mMask, nil), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "EdgeDetect"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Emboss()
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Emboss(mSource, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "Emboss"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlipHorizontal()
		  #if kHavePictureEffects=true
		    mDest.DrawPicture FlipHorizontal(mSource, mProgresshandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "FlipHorizontal"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawSquare(x as integer, y as integer, w as integer)
		  mDest.DrawRect x, y, w, w
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FillSquare(x as integer, y as integer, w as integer)
		  mDest.FillRect x, y, w, w
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FlipVertical()
		  #if kHavePictureEffects=true
		    mDest.DrawPicture FlipVertical(mSource, mProgresshandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "FlipVertical"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GammaFilter(red as double, green as double, blue as double)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture GammaFilter(mSource, red, green, blue, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height  
		  #else
		    NeedPictureEffects "GammaFilter"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GrayScale()
		  #if kHavePictureEffects=true
		    ' PictureEffects v3.3
		    ' mDest.DrawPicture GrayScale(mSource, mMask, mProgressHandler), 0,0, mDest.Width, mDest.Height
		    
		    ' PictureEffects v3.5
		    mDest.DrawPicture GrayScale(mSource, GrayScaleType.WEIGHTEDAVERAGE, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "GrayScale"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InvertPicture()
		  #if kHavePictureEffects=true
		    mDest.DrawPicture InvertPicture(mSource, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "InvertPicture"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MeanRemoval()
		  #if kHavePictureEffects=true
		    mDest.DrawPicture MeanRemoval(mSource, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "MeanRemoval"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MotionBlur(repetitions as integer, angle as double, distance as integer, blurType as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture MotionBlur(mSource, repetitions, angle, distance, blurType, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "MotionBlur"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub NTSCColorFilter()
		  #if kHavePictureEffects=true
		    mDest.DrawPicture NTSCColorFilter(mSource, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "NTSCColorFilter"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Pixelate(pixelSize as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Pixelate(mSource, pixelSize, false, &c000000, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "Pixelate"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RotatePicture(angleDegrees as Double, backColor as Color)
		  #if kHavePictureEffects=true
		    dim rotatedPic as Picture = RotatePicture(mSource, angleDegrees, backColor, mProgressHandler)
		    mDest.DrawPicture rotatedPic, 0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "RotatePicture"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Sharpen()
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Sharpen(mSource, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "Sharpen"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Smooth(weight as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Smooth(mSource, weight, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "Smooth"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SurfaceWave(waves as double)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture SurfaceWave(mSource, waves, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "SurfaceWave"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Twirl(angle as double)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Twirl(mSource, angle, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "Twirl"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Wave(waves as Double, backColor as Color)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Wave(mSource, waves, backColor, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "Wave"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CascadeEffects()
		  ' effects will now use the original picture
		  mSource = mDestPicture
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MotionBlurLinear(repetitions as integer, angle as double, distance as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture MotionBlur(mSource, repetitions, angle, distance, 0, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "MotionBlurLinear"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MotionBlurRadial(repetitions as integer, distance as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture MotionBlur(mSource, repetitions, 0, distance, 1, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "MotionBlurRadial"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MotionBlurZoom(repetitions as integer, distance as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture MotionBlur(mSource, repetitions, 0, distance, 2, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "MotionBlurZoom"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PixelateWithGrid(pixelSize as integer, GridColor as Color)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture Pixelate(mSource, pixelSize, true, GridColor, mMask, mProgressHandler), _
		    0,0, mDest.Width, mDest.Height
		  #else
		    NeedPictureEffects "PixelateWithGrid"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PageCurl(cornerNumber as integer)
		  #if kHavePictureEffects=true
		    mDest.DrawPicture PageCurl(mSource, cornerNumber, nil), _
		    0,0, mDest.Width, mDest.Height  
		  #else
		    NeedPictureEffects "PageCurl"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PageCurl(cornerNumber as integer, opacity as double, horizontal as boolean, curlPercentWidth as integer, curlPercentHeight as integer, curlColor as Color)
		  ' the last param for these complex PageCurl overloads determines background
		  ' variant that uses original picture background - nothing specified
		  #if kHavePictureEffects=true
		    dim curlRect as Rect = CalcPageCurlRect(cornerNumber, curlPercentWidth, curlPercentHeight)
		    dim params as new PageCurlParams(opacity, horizontal, curlRect, mProgressHandler)
		    params.UseOriginalBackground = true
		    params.CurlColor = curlColor 
		    params.AutomaticCurlBackShading = true
		    mDest.DrawPicture PageCurl(mSource, cornerNumber, params), _
		    0,0, mDest.Width, mDest.Height  
		  #else
		    NeedPictureEffects "PageCurl"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PageCurl(cornerNumber as integer, opacity as double, horizontal as boolean, curlPercentWidth as integer, curlPercentHeight as integer, curlColor as Color, backgroundColor as Color)
		  ' the last param for these complex PageCurl overloads determines background
		  ' variant that uses solid color
		  #if kHavePictureEffects=true
		    dim curlRect as Rect = CalcPageCurlRect(cornerNumber, curlPercentWidth, curlPercentHeight)
		    dim params as new PageCurlParams(opacity, horizontal, curlRect, mProgressHandler)
		    params.UseOriginalBackground = false
		    params.CurlColor = curlColor
		    params.BackColor = backgroundColor
		    params.AutomaticCurlBackShading = true
		    mDest.DrawPicture PageCurl(mSource, cornerNumber, params), _
		    0,0, mDest.Width, mDest.Height  
		  #else
		    NeedPictureEffects "PageCurl"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PageCurl(cornerNumber as integer, opacity as double, horizontal as boolean, curlPercentWidth as integer, curlPercentHeight as integer, curlColor as Color, backgroundPicName as string)
		  ' the last param for these complex PageCurl overloads determines background
		  ' variant that uses background image
		  #if kHavePictureEffects=true
		    dim curlRect as Rect = CalcPageCurlRect(cornerNumber, curlPercentWidth, curlPercentHeight)
		    dim params as new PageCurlParams(opacity, horizontal, curlRect, mProgressHandler)
		    params.UseOriginalBackground = false
		    params.CurlColor = curlColor
		    if mImageManager<>nil then
		      params.BackgroundPicture = mImageManager.ImageNamed(backgroundPicName)
		    end if
		    params.AutomaticCurlBackShading = true
		    mDest.DrawPicture PageCurl(mSource, cornerNumber, params), _
		    0,0, mDest.Width, mDest.Height  
		  #else
		    NeedPictureEffects "PageCurl"
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageManager(inManager as ImageManager)
		  ' allows external class to setup, don't assume who owns it
		  mImageManager = inManager
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function B(inColor as Color) As integer
		  ' use because property .Red buggy in RB 5.5.x
		  return inColor.blue
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear()
		  mDest.ClearRect 0, 0, mDest.Width, mDest.Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function G(inColor as Color) As integer
		  ' use because property .Red buggy in RB 5.5.x
		  return inColor.green
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function R(inColor as Color) As integer
		  ' use because property .Red buggy in RB 5.5.x
		  return inColor.Red
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawString(s as string, x  as integer, y as integer)
		  mDest.DrawString s, x, y
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SinD(inDegrees as double) As double
		  return sin(inDegrees * Degrees2Rads)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CosD(inDegrees as double) As double
		  return Cos(inDegrees * Degrees2Rads)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TanD(inDegrees as double) As double
		  return Tan(inDegrees * Degrees2Rads)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyToMask()
		  ' copies the composed picture to the mask
		  ' for better performance, see SetOutputToMask
		  dim newMask as new Picture(mDest.Width, mDest.Height, 32)
		  dim saveFore as Color
		  if not (mDestPicture.Mask is nil) then
		    saveFore = mDest.ForeColor
		    mDest.ForeColor = black '  solid mask whilst drawing it to temp pic
		    mDestPicture.Mask.Graphics.FillRect 0, 0, mDest.Width, mDest.Height
		  end if
		  newMask.Graphics.DrawPicture mDestPicture, 0, 0, mDest.Width, mDest.Height
		  mDestPicture.Mask.Graphics.DrawPicture newMask, 0, 0, mDest.Width, mDest.Height
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetOutputToMask()
		  if mDestPicture is nil then
		    MsgBox "Must pass a destCanvas in which has a backdrop"
		    return
		  end if
		  mDest = mDestPicture.Mask.Graphics
		  mSurface = mDestPicture.Mask.RGBSurface
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetOutputToPicture()
		  if mDestPicture is nil then
		    MsgBox "Must pass a destCanvas in which has a backdrop"
		    return
		  end if
		  mDest = mDestPicture.Graphics
		  mSurface = mDestPicture.RGBSurface
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LinearGradient(TopColor as Color, BottomColor as Color, angleDegrees as double)
		  dim startR, startG ,startB, endR, endG, endB as integer
		  ' draws bottom-up
		  startR = R(BottomColor)
		  startG = G(BottomColor)
		  startB = B(BottomColor)
		  endR = R(TopColor) 
		  endG = G(TopColor) 
		  endB = B(TopColor) 
		  dim cosA, sinA as double
		  
		  dim i, h, w, r as integer, ratio, endratio as Double 
		  dim g as graphics
		  dim tempPic as Picture
		  if angleDegrees = 0.0 then
		    g = mDest
		    h = Height
		    w = Width
		  else 
		    ' use these multipliers to work out offsets and sizes, so always summing
		    cosA = Abs( CosD(angleDegrees) )
		    sinA = Abs( SinD(angleDegrees) )
		    ' want picture big wide enough to rotate original within and no background colour visible
		    h = Height*SinA + Width*CosA
		    w = kSqRootTwo * (Height + Width)  ' widest ever needed is diagonal 'Height*CosA + Width*SinA
		    tempPic = New Picture(w, h, 32)
		    g = TempPic.Graphics
		  end if
		  clearRect 0, 0, h, w
		  for i = h DownTo 0 
		    ratio = i/h
		    endratio = 1.0 - ratio 
		    g.ForeColor = RGB( endR*endratio + startR*ratio, endG*endratio + startG*ratio, endB*endratio + startB*ratio) 
		    g.DrawLine 0, i, w, i 
		  next 
		  ' TEST LOGIC TO KEEP draw marker in middle, arrow pointing to middle of bottom row
		  'g.ForeColor = yellow
		  'g.DrawLine w/2, h, w/2, 0
		  'g.DrawLine w/2, h, w/2-20, h-20
		  'g.DrawLine w/2, h, w/2+20, h-20
		  ' END MARKER DRAW
		  dim offX, offY as integer
		  dim rotatedPic as Picture
		  #if kHavePictureEffects
		    if angleDegrees <> 0.0 then
		      rotatedPic = RotatePicture(tempPic, angleDegrees, &C000000, mProgressHandler)
		      ' rotatedPic will be LARGER than the original we generated that's big enough to fill the starting rect
		      ' draw it concentric with the starting rect
		      offX = (rotatedPic.Width - Width)/2
		      offY = (rotatedPic.Height-Height)/2
		      mDest.DrawPicture rotatedPic, - offX, -offY
		      
		    end if '  rotate
		  #else
		    #if DebugBuild
		      break
		      ' BREAKS HERE TO MAKE IT CLEAR ROTATION DOESN'T WORK WITHOUT PICTURE EFFECTS
		    #endif
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RadialGradient(OuterColor as Color, CentreColor as Color)
		  dim centreR, centreG, centreB, outR, outG, outB as integer
		  centreR = R(CentreColor)
		  centreG = G(CentreColor)
		  centreB = B(CentreColor)
		  outR = R(OuterColor) 
		  outG = G(OuterColor) 
		  outB = B(OuterColor) 
		  
		  dim i as integer, ctrRatio, outRatio as Double 
		  dim dia, cx, cy as integer
		  FillDest OuterColor
		  cx = Width/2
		  cy = height/2
		  dia = 2*sqrt(cx*cx + cy*cy)
		  ' concentric, narrowing circles, so any gaps are the next outermost colour
		  for i = dia DownTo 0 
		    outRatio = i/dia  
		    ctrRatio = 1.0 - outRatio ' from 0% at outer to 100% at inner
		    ForeColor = RGB( outR * outRatio + centreR * ctrRatio, _
		    outG * outRatio + centreG * ctrRatio, _
		    outB * outRatio + centreB * ctrRatio) 
		    FillCircle cx-i/2, cy-i/2, i
		  next 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaskFill(OpacityPercent as double)
		  dim ov as integer = 255*(1 - OpacityPercent/100)
		  mDestPicture.Mask.Graphics.ForeColor =  RGB(ov, ov, ov)
		  mDestPicture.Mask.Graphics.FillRect 0, 0, mDest.Width, mDest.Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaskRadialGradient(OuterShade as integer, CentreShade as integer)
		  SetOutputToMask
		  ' values make more sense going 0-255 but 0,0,0 is black and 255, 255,255 is white so invert
		  dim cv as integer = 255 - CentreShade
		  dim ov  as integer = 255 - OuterShade
		  RadialGradient RGB(ov, ov, ov), RGB(cv, cv, cv)
		  SetOutputToPicture
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaskLinearGradient(TopShade as integer, BottomShade as integer, angleDegrees as double)
		  SetOutputToMask
		  ' values make more sense going 0-255 but 0,0,0 is black and 255, 255,255 is white so invert
		  dim tv as integer = 255 - TopShade
		  dim bv  as integer = 255 - BottomShade
		  LinearGradient RGB(tv, tv, tv), RGB(bv, bv, bv), angleDegrees
		  SetOutputToPicture
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MaskRingGradient(OuterShade as integer, CentreShade as integer, holeDiameterPercent as double)
		  ' gradient radial but with a percentage hole at which it stops
		  SetOutputToMask
		  ' values make more sense going 0-255 but 0,0,0 is black and 255, 255,255 is white so invert
		  dim cv as integer = 255 - CentreShade
		  dim ov  as integer = 255 - OuterShade
		  RingGradient RGB(ov, ov, ov), RGB(cv, cv, cv), holeDiameterPercent
		  SetOutputToPicture
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RingGradient(OuterColor as Color, CentreColor as Color, holeDiameterPercent as double)
		  ' like a radial gradient but leaves a portion of the centre at CentreColor rather than infinite
		  ' resolution gradient to a point
		  dim centreR, centreG, centreB, outR, outG, outB as integer
		  centreR = R(CentreColor)
		  centreG = G(CentreColor)
		  centreB = B(CentreColor)
		  outR = R(OuterColor) 
		  outG = G(OuterColor) 
		  outB = B(OuterColor) 
		  
		  'dim i as integer, ctrRatio, outRatio as Double 
		  'dim dia, cx, cy as integer
		  'FillDest OuterColor
		  'cx = Width/2
		  'cy = height/2
		  'dia = 2*sqrt(cx*cx + cy*cy)
		  '' concentric, narrowing circles, so any gaps are the next outermost colour
		  'for i = dia DownTo 0 
		  'outRatio = i/dia  
		  'ctrRatio = 1.0 - outRatio ' from 0% at outer to 100% at inner
		  'ForeColor = RGB( outR * outRatio + centreR * ctrRatio, _
		  'outG * outRatio + centreG * ctrRatio, _
		  'outB * outRatio + centreB * ctrRatio) 
		  'FillCircle cx-i/2, cy-i/2, i
		  'next 
		  
		  dim ctrRatio, outRatio as Double 
		  dim i, innerLimit, ratioRange, dia, cx, cy as integer
		  FillDest OuterColor
		  cx = Width/2
		  cy = height/2
		  dia = 2*sqrt(cx*cx + cy*cy)
		  innerLimit = dia * holeDiameterPercent / 100
		  ratioRange = dia - innerLimit ' gradient applied over smaller range, not complete circle
		  for i = dia DownTo innerLimit
		    outRatio = (i-innerLimit)/ratioRange  ' from 1 to 0
		    ctrRatio = 1.0 - outRatio ' from 0% at outer to 100% at inner
		    ForeColor = RGB( outR * outRatio + centreR * ctrRatio, _
		    outG * outRatio + centreG * ctrRatio, _
		    outB * outRatio + centreB * ctrRatio) 
		    FillCircle cx-i/2, cy-i/2, i
		  next 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CalcPageCurlRect(cornerNumber as integer, curlPercentWidth as integer, curlPercentHeight as integer) As Rect
		  #if kHavePictureEffects
		    dim curlRect as new Rect
		    if curlPercentWidth=100 and curlPercentHeight=100 then
		      curlRect.Top = 0
		      curlRect.Left = 0
		      curlRect.Right = mDest.Width
		      curlRect.Bottom = mDest.Height
		    else
		      select case cornerNumber
		      case 0 '  top-left
		        curlRect.Top = 0
		        curlRect.Left = 0
		        curlRect.Right = mDest.Width * curlPercentWidth / 100.0
		        curlRect.Bottom = mDest.Height * curlPercentHeight / 100.0
		        
		      case 1 ' top-right
		        curlRect.Top = 0
		        curlRect.Left = mDest.Width * (1.0 -  curlPercentWidth / 100.0)
		        curlRect.Right = mDest.Width
		        curlRect.Bottom = mDest.Height * curlPercentHeight / 100.0
		        
		      case 2 ' bot-left
		        curlRect.Top = mDest.Height * (1.0 -  curlPercentHeight / 100.0)
		        curlRect.Left = 0
		        curlRect.Right = mDest.Width * curlPercentWidth / 100.0
		        curlRect.Bottom = mDest.Height
		        
		      else
		        curlRect.Top = mDest.Height * (1.0 -  curlPercentHeight / 100.0)
		        curlRect.Left = mDest.Width * (1.0 -  curlPercentWidth / 100.0)
		        curlRect.Right = mDest.Width
		        curlRect.Bottom = mDest.Height
		      end select
		    end if
		    return curlRect
		  #endif
		End Function
	#tag EndMethod


	#tag Note, Name = About
		v1.0 23 June 2004
		This class exposes the basic Graphics methods and Einhugur's Picture Effects methods
		so you can use them in an RBScript, allowing you to easily write graphical plugins.
		
		If you don't have the Picture Effects plugin then define the constant kHavePictureEffects as false
		and you should still be able to compile. Note that you should be able to use PictureEffects in demo
		mode with this example.
		
		v1.1 26 June 2004
		Adds MotionBlurLinear, MotionBlurRadial & MotionBlurZoom as separate functions
		Pixelate function is for no grid, so only takes one param
		PixelateWithGrid added to allow you to specify grid color
		PageCurl several overloads added
		
		v1.2 19 Jan 2005
		Adds R, G & B functions to work around .red accessor bug in RB 5.5.
		
		Can create mask gradients 
		
		---
		
		This code requires REALBasic 5.5 or higher.
		
		This class is released as freeware for any use in gratitude to all the people who've helped me
		with REALbasic and other programming over the years.
		
		Andy Dent
		dent@oofile.com.au
		
		
		
	#tag EndNote

	#tag Note, Name = EinhugurFunctionsMissing
		I haven't added the following yet because of the complexity of parameters
		
		ApplyMatrix
		Blend
		PageCurl
		
		
		the following aren't exposed as they seem somewhat irrelevant to scripts
		EnsurePictureBits
		EnsurePictureCompatible
		
	#tag EndNote


	#tag Property, Flags = &h1
		Protected mSource As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mDest As Graphics
	#tag EndProperty

	#tag Property, Flags = &h0
		mMask As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		mSurface As RGBSurface
	#tag EndProperty

	#tag Property, Flags = &h0
		mRandom As Random
	#tag EndProperty

	#tag Property, Flags = &h0
		mProgressHandler As IProgressHandler
	#tag EndProperty

	#tag Property, Flags = &h0
		mDestPicture As Picture
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mImageManager As ImageManager
	#tag EndProperty

	#tag Property, Flags = &h0
		PI As double
	#tag EndProperty

	#tag Property, Flags = &h0
		aliceblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		antiquewhite As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		aqua As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		aquamarine As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		azure As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		beige As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		bisque As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		black As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		blanchedalmond As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		blue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		blueviolet As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		brown As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		burlywood As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		cadetblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		chartreuse As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		chocolate As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		coral As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		cornflowerblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		cornsilk As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		crimson As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		cyan As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkcyan As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkgoldenrod As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkgray As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkgreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkkhaki As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkmagenta As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkolivegreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkorange As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkorchid As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkred As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darksalmon As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkseagreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkslateblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkslategray As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkturquoise As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		darkviolet As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		deeppink As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		deepskyblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		dimgray As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		dodgerblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		firebrick As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		floralwhite As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		forestgreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		fuchsia As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		gainsboro As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		ghostwhite As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		gold As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		goldenrod As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		gray As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		green As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		greenyellow As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		honeydew As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		hotpink As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		indianred As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		indigo As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		ivory As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		khaki As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lavender As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lavenderblush As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lawngreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lemonchiffon As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightcoral As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightcyan As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightgoldenrodyellow As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightgreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightgrey As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightpink As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightsalmon As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightseagreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightskyblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightslategray As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightsteelblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lightyellow As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		lime As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		limegreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		linen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		magenta As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		maroon As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mediumaquamarine As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mediumblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mediumorchid As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mediumpurple As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mediumseagreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mediumslateblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mediumspringgreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mediumturquoise As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mediumvioletred As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		midnightblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mintcream As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		mistyrose As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		moccasin As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		navajowhite As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		navy As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		oldlace As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		olive As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		olivedrab As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		orange As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		orangered As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		orchid As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		palegoldenrod As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		palegreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		paleturquoise As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		palevioletred As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		papayawhip As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		peachpuffle As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		peru As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		pink As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		plum As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		powderblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		purple As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		red As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		rosybrown As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		royalblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		saddlebrown As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		salmon As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		sandybrown As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		seagreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		seashell As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		sienna As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		silver As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		skyblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		slateblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		slategray As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		snow As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		springgreen As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		steelblue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		tan As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		teal As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		thistle As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		tomato As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		turquoise As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		violet As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		wheat As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		white As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		whitesmoke As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		yellow As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		yellowgreen As Color
	#tag EndProperty


	#tag Constant, Name = kHavePictureEffects, Type = Boolean, Dynamic = False, Default = \"FALSE", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPI, Type = Double, Dynamic = False, Default = \"3.14159265358979323846264338327950", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Degrees2Rads, Type = Double, Dynamic = False, Default = \"0.0174532925199433", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kSqRootTwo, Type = Double, Dynamic = False, Default = \"1.414213562373095", Scope = Public
	#tag EndConstant


End Class
#tag EndClass
