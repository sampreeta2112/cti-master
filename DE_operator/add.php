<!DOCTYPE html>
<html>
  <head>
    <title>Title of the document</title>
    <style>
     @import "https://fonts.googleapis.com/css?family=Raleway";
* { box-sizing: border-box; }
body { 
  margin: 0; 
  padding: 0; 
  background: #333;
  font-family: Raleway; 
  text-transform: uppercase; 
  font-size: 11px; 
}
h1{ margin: 0; }
#contact { 
  -webkit-user-select: none; /* Chrome/Safari */        
  -moz-user-select: none; /* Firefox */
  -ms-user-select: none; /* IE10+ */
  margin: 4em auto;
  width: 100px; 
  height: 30px; 
  line-height: 30px;
  background: teal;
  color: white;
  font-weight: 700;
  text-align: center;
  cursor: pointer;
  border: 1px solid white;
}

#contact:hover { background: #666; }
#contact:active { background: #444; }

#contactForm { 
  display: none;

  border: 6px solid salmon; 
  padding: 2em;
  width: 400px;
  text-align: center;
  background: #fff;
  position: fixed;
  top:50%;
  left:50%;
  transform: translate(-50%,-50%);
  -webkit-transform: translate(-50%,-50%)
  
}

input, textarea { 
  margin: .8em auto;
  font-family: inherit; 
  text-transform: inherit; 
  font-size: inherit;
  
  display: block; 
  width: 280px; 
  padding: .4em;
}
textarea { height: 80px; resize: none; }

.formBtn { 
  width: 140px;
  display: inline-block;
  
  background: teal;
  color: #fff;
  font-weight: 100;
  font-size: 1.2em;
  border: none;
  height: 30px;
}
    </style>
  </head>
  <body>
   <div id="contact">Contact</div>

<div id="contactForm">

  <h1>Keep in touch!</h1>
  <small>I'll get back to you as quickly as possible</small>
  
  <form action="#">
    <input placeholder="Name" type="text" required />
    <input placeholder="Email" type="email" required />
    <input placeholder="Subject" type="text" required />
    <textarea placeholder="Comment"></textarea>
    <input class="formBtn" type="submit" />
    <input class="formBtn" type="reset" />
  </form>
</div>
    <script>
     $(function() {
  
  // contact form animations
  $('#contact').click(function() {
    $('#contactForm').fadeToggle();
  })
  $(document).mouseup(function (e) {
    var container = $("#contactForm");

    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.fadeOut();
    }
  });
  
});
    </script>
  </body>
</html>