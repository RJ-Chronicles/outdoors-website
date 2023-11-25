-Implementing Header section:
    Universal selectors
    Set Project-wide font defination
    Clip parts of elements using clip-path

      transform: translate(-50%, -50%); relation with content

-css animation using @keyframes and animation property
    transition property and 
    transform: translateX(-100px) rotate(0deg);
    animation: moveInRight 1s ease-in;

ctrl + d multiple line selection


Building complex animation 
    pseudo-elements
    why to use ::after pseudo elements
    animation effect using transition property
-----------------------------------------------------------
24-11-2023
Three pillars of writing good htm and css(Never forget them)

1)Responsive design:
    One webpage that looks good accross the any screen size
    Fuild layout
    media queries
    Responsive Images
    Correct units
    Desktop-first vs mobile-first
2)Maintainable And scalable code
    Clean
    Easy-to-understand
    Growth
    How to organize files
    how to name classes
3)Web performance
    Less http requests
    Less code
    Compress code
    use a css preprocessor
    less Images
    compress images


How to work css behind the scene
    Load htmp => Parse HTML => DOM =====================
                    |                                   |
            Load Css=> Parse Css =>CSS Object Model==>  |
                                |                       |
                            Cascade                     |
                                |                       |
                            Process final css           |
                                                    Render Tree
                        Website rendering   Render tree<=|


Importance Declaration
!important declations

Specifity
    inline Styles, IDs, classes, pseudo classes, attribute, elements, pseudo-elements

Source Order
    Sa
#id, class, tag, 
How css values are processed

width declare value 60% => cascaded value 60% => specified value => 60% =>computed value => used value (100px) then 60px=> actual valu floor(60px) 60px

padding 0px default
font-size 16px default, if 1.5 rem then 24px it can be inherited in child elements  hence 24px

rem => root elements reference, em=>parent elements reference

vh and vw => viewport heigth and viewport width

------------------------------------------------------------
Css Inheritance:
    Passes the values for some specific properties from parents to children
    properties related to text are inherited : font-family, font-size, color etc
    .parent{
        font-size:20px;
        line-height:150%;
    }

    .child{

    }

How and why to use rem units in our Project
A great workflow for converting px to rem
