-Implementing Header section:
    Universal selectors
    Set Project-wide font defination
    Clip parts of elements using clip-path

      transform: translate(-50%, -50%); relation with ****

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

The Box Model  
marding:space between box 
    padding : area around the *
        border: goes around th*e padding and *
            ***
            ***    fillArea**

example : total width: rb+ rp + specified width + lp + lb
          total height tp + tb + specified height + bp + bb
          here is box-sizing border-box comes in picture
          total width = specified width
          total height = specified width

    Block level boxes
        1) display : block;
            100% parent's' width
            Vertically, one afte one

        2) display: inline
            *content is distributed in inlines
            *Occupies only *'s' space 
            *no line brea*k
            *no height an*d width
            *Padding and* margins only horizantal
        3) display: inline-block
            *A mix of block and inline
            *Occupies only content's' space
            *No line breaks
            *Box model applies as showed

3] Positioning Schemas
    1)Normal Flow:
        * Default Positioning Schemas
        * No floated
        * Not absolutely positioned
        * Elements laid out according to their cource Order
        => position: relative
    2) Floats
        * Element is removed from the normal Flow
        * Text and inline elments will be wrap around the floated elements
        * The container will not adjust its height to the elements
        => float: left; float : right;
    3) Absolute
        * Element is removed from the normal Flow
        * No impact on surrounding content or elements
        * We use top, bottom, left and right offset the element from its relatively positioned container
        => position: absolute; position: fixed

4] Stacking context
        Layers, resolved using z index


Think
    component driven design
        Re-usable across a Project
        Independent, allowing to use them anywhere on the page

Build
    BEM(block Element Modifier)
        block: standalone component that is meaningful on its own
        element: part of a block that has no standalone meaningful
        Modifier: a dirrent version of a block or an elments

        block+Modifier = --
        block+element  = __ (dash dash)
Architect Mindset
    Clean
    Modular
    Reusable
    Ready for Growth

project Structure
    base/
    components/
    layout/
    pages/
    themes/
    abstracts/
    vendors/

---------------------------------------------------------
                        Introduction To SASS
                                    25/11/2023

Sass is css preprocessor, an extension of css that adds power and elegance to the basic language

sass code ---------------> compiled css code

Features
    1) Variables
    2) Nesting
    3) Operators
    4) Partials and imports
    5) Mixins : Write reusable piece of css code
    6) Functions : Similar to mixins, differenct it can produce Variables
    7) Extends 
    8)control directives
    We are going to use scss extention
1)Sass variables and nesting


    
    <nav>
      <ul class="navigation">
        <li><a href="#">About us</a></li>
        <li><a href="#">pricing</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <div class="button">
        <a class="btn-main" href="#">Sign up</a>
        <a class="btn-hot" href="#">Get a Quote</a>
      </div>
    </nav>

    scss/sass code as below
    
   $color-primary : #f9ed69; //Yello color
    $color-secondary: #f08a5d;
    $color-tertiory : #b4532e;
    $color-text-dark: #0fafae;
    $width-button: 50px;
    $color-text-light: #eee;
    @mixin clearfix{
        &::after{
            content :"";
            clear: both;
            display: table;
        }
    }
    
    @mixin style-link-text($color){
        text-decoration: none;
        text-transform: uppercase;
        color: $color; 
    }
    
    @function divide($a, $b){
        return $a/$b;
    }
    nav{
        margin: divide(30,4) *1px // 30px;
        background-color : $color-primary;
        @include clearfix;
    }


    .navigation{
        list-style: none;
         
        li{
            display:inline-block;
            margin-left:30px;
            &:first-child{ 
                margin: 0
            }

            a:link{
                @include style-link-text($color-text-dark)
            }
        }
    }

    .button{
        float :right;
    }
    
    %btn-placeholder{
        padding:10px;
        display:inline-block;
        text-align:center;
        border-radius:100px;
        width: $width-button;
        @include style-link-text($color-text-light) 
    }
    # // .btn-main:link,
    # // .btn-hot:link{
    # //     padding:10px;
    # //     display:inline-block;
    # //     text-align:center;
    # //     border-radius:100px;
    # //     width: $width-button;
    # //     @include style-link-text($color-text-light)
    # // }

    .btn-main{
        &:link{
            @extend %btn-placeholder;
            background-color: $color-secondary;
        }
        &:hover{
            background-color:darken($color-secondary, 15%)
        }
    }

    .btn-hot{
        &:link{
            @extend %btn-placeholder;
            background-color: $color-secondary;
        }
        &:hover{
            background-color:lighten($color-secondary, 15%)
        }
    }


nav {
  margin: 30px;
  background-color: #f9ed69;
}
nav::after {
  content: "";
  clear: both;
  display: table;
}

.navigation {
  list-style: none;
}
.navigation li {
  display: inline-block;
  margin-left: 30px;
}
.navigation li:first-child {
  margin: 0;
}
.navigation li a:link {
  text-decoration: none;
  text-transform: uppercase;
  color: #0fafae;
}

.button {
  float: right;
}

.btn-main:link,
.btn-hot:link {
  padding: 10px;
  display: inline-block;
  text-align: center;
  border-radius: 100px;
  width: 50px;
  text-decoration: none;
  text-transform: uppercase;
  color: #eee;
}

.btn-main:link {
  background-color: #f08a5d;
}
.btn-main:hover {
  background-color: #ea5717;
}

.btn-hot:link {
  background-color: #f08a5d;
}
.btn-hot:hover {
  background-color: #f6bda3;
}

Install Sass Locally:
