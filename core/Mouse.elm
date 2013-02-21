
module Mouse where

-- The current mouse position.
position : Signal (Int,Int)
position = Native.Mouse.position

-- The current x-coordinate of the mouse.
x : Signal Int
x = Native.Mouse.x

-- The current y-coordinate of the mouse.
y : Signal Int
y = Native.Mouse.y


-- The current state of the left mouse-button.
-- True when the button is down, and false otherwise.
isDown : Signal Bool
isDown = Native.Mouse.isDown

-- True immediately after the left mouse-button has been clicked,
-- and false otherwise.
isClicked : Signal Bool
isClicked = Native.Mouse.isClicked
 

-- Always equal to unit. Event triggers on every mouse click.
clicks : Signal ()
clicks = Native.Mouse.clicks

-- Determine whether an element has been clicked. The resulting pair
-- is a signal of booleans that is true when its paired element has
-- been clicked. The signal is True immediately after the left
-- mouse-button has been clicked, and false otherwise. 
isClickedOn : Element -> (Element, Signal Bool)
isClickedOn = Native.Mouse.isClickedOn