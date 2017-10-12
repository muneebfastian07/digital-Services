
// grab the carousel element
var myCarousel = document.getElementById('myCarousel');

// initialize with some options
var myCarouselInit = new Carousel(myCarousel, { // these options values will override the ones set via DATA API 
  interval: false,
  pause: false,
  keyboard: false
});


//////////////////////////////////
// Clipboard
//////////////////////////////////

// var urlButton = document.getElementById("urlButton");

// new Tooltip(urlButton, {
//   placement: 'top', //string
//   animation: 'slideNfade', // CSS class
//   delay: 150, // integer
// })



// function setTooltip(btn, message) {
//   var urlTooltip = urlButton.Tooltip;
//   urlTooltip.hide();
//   urlTooltip.attr('data-original-title', message);
//   urlTooltip.show();
// }


// function hideTooltip(btn) {
//   var urlTooltip = urlButton.Tooltip;
//   setTimeout(function() {
//     urlTooltip.hide();
//   }, 1000);
// }

var clipboard = new Clipboard('button');

clipboard.on('success', function(e) {
  // // setTooltip(e.trigger, 'Copied!');
  // hideTooltip(e.trigger);
});

clipboard.on('error', function(e) {
  // setTooltip(e.trigger, 'Failed!');
  // hideTooltip(e.trigger);
});

////////////////////////////////// 
// Helper Alerts
////////////////////////////////// 



$(document).on('click', '.confirm-delete', function(){
  return confirm('Are you sure you want to delete this service request?');
});

$(document).on('click', '.confirm-archive', function(){
  return confirm('This will archive this quote for all teammates shared on it. Are you sure you want to proceed?');
});

////////////////////////////////// 
// New Service Request & Offering Pages
//////////////////////////////////

$(document).ready(function() {



  // document.getElementById("hideAll").style.display = "block";

  // check if we're on the right Page
  if (typeof elements !== 'undefined') {

    ////////////////////////////////// 
    // Create Services Dropdown
    //////////////////////////////////

    // account for new vs add quote pages
    locationElement = document.getElementById("id_location");
    if (locationElement === null && typeof this_location !== 'undefined') {
      var length = 2;
    } else if (locationElement === null) {
      var length = 0;
    } else {
      var length = $('#id_location > option').length;
      // Auto-select company after adding one for the first time
      $('select[id=id_location] option:eq(1)').attr('selected', 'selected');
    }

    // build form fields
    if (length > 1) {
      // find form + add services div
      newQuoteForm = document.getElementById("new-quote-form");
      companyDiv = document.getElementById("company-div");
      servicesDiv = document.createElement("div");
      servicesDiv.setAttribute("id", "service-field");
      servicesDiv.setAttribute("class", "fieldWrapper");

      if (companyDiv) {
        companyDiv.after(servicesDiv);
      } else {
        $('.new-service-request-subtitle').after(servicesDiv);
      }

      // create label
      servicesLabel = document.createElement("label");
      servicesLabel.append("Service");

      // create field
      servicesDropdown = document.createElement("select");
      servicesDropdown.setAttribute("id", "id_service");
      servicesDropdown.setAttribute("class", "full-width");
      servicesDropdown.setAttribute("name", "service");

      // add field & label
      servicesDiv.append(servicesLabel);
      servicesDiv.append(servicesDropdown);

      $('#id_service').append($('<option>', { 
          value : "",
          text : "Choose a service"
      }));

      $.each(elements["Service"], function (i, item) {
        $('#id_service').append($('<option>', { 
          value: item[0],
          text : item[1] 
        }));
      });

    };

    ////////////////////////////////// 
    // Create Quote Fields
    //////////////////////////////////
    
    function createQuoteFields() {
      
      var theServiceValue = document.getElementById("id_service").value;
      var quoteList = elements['parameters'][theServiceValue]['quote_fields'];
      var quoteFields = {};
      for (var i = 0, len = quoteList.length; i < len; i++) {
        quoteFields = Object.assign({},quoteFields , quoteList[i]);
      }
      var variableDiv = document.getElementById("new-quote-dynamic-content");
      var fieldsContainer = document.createElement('div');
      // Clear dynamic div
      variableDiv.innerHTML = null

      for (var key in quoteFields) {
        if (quoteFields.hasOwnProperty(key)) {

          // Create field div
          fieldDiv = document.createElement('div');
          fieldDiv.setAttribute("class", "fieldWrapper");
          // Create field label
          fieldLabel = document.createElement("label");
          fieldLabel.append(key);
          // Create field input
          fieldInput = document.createElement(quoteFields[key]['type']);
          fieldInputName = quoteFields[key]['name'];
          fieldInput.setAttribute("name", fieldInputName);
          fieldInput.setAttribute("class", 'fieldInput full-width');
          fieldInput.setAttribute('type', 'number');
          fieldInput.setAttribute('min', "0");

          if (quoteFields[key]['type'] == "input") {
            fieldInput.value=0;
          };


          // Create append above to dynamic div
          variableDiv.append(fieldDiv);
          fieldDiv.append(fieldLabel);
          fieldDiv.append(fieldInput);
          // Add options to select element
          if (quoteFields[key]['type'] == "select") {

            $.each(quoteFields[key]['options'], function (i, item) {
              fieldDiv.querySelector('.fieldInput').append($('<option>', { 
                value: item[1],
                text : item[0] 
              })[0]);
            });

          };



        };

      };
      // Create description div
      var description = elements['parameters'][theServiceValue]['description'];
      if (description) {
        var descriptionDiv = document.createElement('div');
        var descriptionP = document.createElement('p');
        descriptionP.setAttribute("class", "new-request-service-description");
        // Add attributes
        descriptionP.append(description);
        descriptionDiv.append(descriptionP);
        // Add description div to variable div
        variableDiv.append(descriptionDiv);
      }
      var buttonsDiv = document.createElement('div');
      var quotePrimaryButton = document.createElement('button');
      var quoteDefaultButton = document.createElement('a');

      // Create buttons div
      var buttonsDiv = document.createElement('div');
      var quotePrimaryButton = document.createElement('button');
      var quoteDefaultButton = document.createElement('a');
      // Add attributes
      buttonsDiv.setAttribute("class", "new-request-buttons-div");
      quotePrimaryButton.setAttribute("class", "primary-button new-request-button");
      quotePrimaryButton.setAttribute("type", "submit");
      quotePrimaryButton.setAttribute("role", "button");
      quotePrimaryButton.setAttribute("name", "new-service-request");
      quotePrimaryButton.append("See Quotes");

      // Add buttons to div
      buttonsDiv.append(quotePrimaryButton);
      // Add buttons div to variable div
      variableDiv.append(buttonsDiv);
    };
  };

  serviceInput = document.getElementById("id_service");

  if (typeof service_request_dictionary !== 'undefined') {

    var locationId = service_request_dictionary['locationId'];
    if (document.getElementById("id_location")) {
      document.getElementById("id_location").value=locationId;
    }
    var serviceId = service_request_dictionary['serviceId'];
    if (document.getElementById("id_service")) {
      document.getElementById("id_service").value=serviceId;
      serviceId = service_request_dictionary['serviceId']
      serviceInput.value=serviceId;
    }

    if (document.getElementById("id_service")) {
      createQuoteFields();
      var parametersObject = service_request_dictionary['parameters'];

      for (var property in parametersObject) {
          if (parametersObject.hasOwnProperty(property)) {
            document.getElementsByName("parameters_" + property)[0].value = parametersObject[property];
          };
      };
    }

  };

  if (serviceInput !== null) {
    serviceInput.onchange = createQuoteFields;
  };

});

////////////////////////////////// 
// Recommendations page
//////////////////////////////////

$(document).ready(function() {
  // grab products
  if (typeof products !== 'undefined') {
    var productsList = products;
    // grab product container
    var productContainer = document.getElementById("product-container");
    // create header
    var resultsHeader = document.createElement('h3');
    resultsHeader.setAttribute("class", "add-side-margin page-header");
    productContainer.append(resultsHeader);
    resultsHeader.append("Product recommendations");

    // loop through products
    for (var i = 0, len = productsList.length; i < len; i++) {
      // create card
      var columnDiv = document.createElement('div');
      var resultDiv = document.createElement('div');
      // var resultBadge = document.createElement('img');
      // resultBadge.src="/static/quotes/images/badge.png"
      var serviceTitle = document.createElement('h4');
      var resultBodyDiv = document.createElement('div');
      var resultBodyList = document.createElement('ul');
      var resultFooterDiv = document.createElement('div');
      var resultButton = document.createElement('a');
      var resultBodyContent = document.createElement('p');
      var resultEmojis = document.createElement('span');
      // set attributes
      columnDiv.setAttribute("class", "col-md-4");

      resultDiv.setAttribute("class", "rec-result-div");
      serviceTitle.setAttribute("class", "services-titles");
      resultBodyDiv.setAttribute("class", "rec-card-body");
      resultEmojis.append("")
      resultEmojis.append(productsList[i]['because'])
      resultFooterDiv.setAttribute("class", "rec-card-footer");
      resultButton.setAttribute("class", "primary-button rec-button");
      // provide content
      
      serviceTitle.append(productsList[i]['name']);
      // serviceTitle.append(resultBadge);
      resultBodyContent.append("lorem ipsum");

      resultButton.append("Select");

      var resultBodyListItem1 = document.createElement('li');
      var resultBodyListItem2 = document.createElement('li');
      var resultBodyListItem3 = document.createElement('li');
      var resultBodyListItem4 = document.createElement('li');
      // build card

      productContainer.append(columnDiv);
      columnDiv.append(resultDiv);
      resultDiv.append(serviceTitle);
      resultDiv.append(resultBodyDiv);
      resultBodyDiv.append(resultBodyList);
      resultBodyList.append(resultBodyListItem1);
      resultBodyListItem1.append(products[i]['bullet_1']);
      resultBodyList.append(resultBodyListItem2);
      resultBodyListItem2.append(products[i]['bullet_2']);
      resultBodyList.append(resultBodyListItem3);
      resultBodyListItem3.append(products[i]['bullet_3']);
      resultBodyList.append(resultBodyListItem4);
      resultBodyListItem4.append(products[i]['bullet_4']);
      resultBodyDiv.append(resultEmojis);
      resultDiv.append(resultFooterDiv);
      resultFooterDiv.append(resultButton);

    };
    
  };
  
});