//= require jquery-1.7.1

$(function(){
  $('.CompanyDropdown-module__dropdownWrapper___a38').click(function(){
    $('.CompanyMenu-module__childMenu___2e3').toggleClass('show');
  });

  $('.NavDropdown-module__button___54b').click(function(){
    $('.NavDropdown-module__dropdown___935').toggle();
  });

  $('.ServiceDetailView-module__button___ce7').click(function(){
    $('.modal-overlay').show();
  })

  $('.close-modal-btn').click(function(){
    $('.modal-overlay').hide();
  })

  var step = 0;
  $('.button-next').click(function(){
    step += 1;
    $('.service-request-form-content').empty();
    switch(step){
      case 1:
        $('.question-text').text('Do you want to schedule your service once or on a recurring basis?');
        $('.ProgressBar-module__progress___703').attr('style', 'width: 50%;')
        $('.service-request-form-footer').append('<button class="Button__button___1G9 Button__small___3uC Button__link___lI7 button-back" data-qa="service-request-form-prev" name="button"><!-- react-text: 1133 -->← Back<!-- /react-text --></button>');
        $('.service-request-form-content').html('<div class="SchedulingForm-module__schedulingForm___53e"><div class="SchedulingForm-module__radioGroup___4a0"><div class="RadioButton__wrapper___3R4 RadioButton__medium___1IX SchedulingForm-module__radioButton___5ef SchedulingForm-module__radioGroup___4a0-radiobutton"><input id="radio-5557157331315050" name="type" value="one_off" type="radio"><label for="radio-5557157331315050" data-qa="scheduling-form-one-time">Once</label></div><div class="RadioButton__wrapper___3R4 RadioButton__medium___1IX SchedulingForm-module__radioButton___5ef SchedulingForm-module__radioGroup___4a0-radiobutton"><input id="radio-5187696858301379" name="type" value="recurring" type="radio"><label for="radio-5187696858301379" data-qa="scheduling-form-recurring">Recurring</label></div></div></div>');
        break;
      case 2:
        $('.question-text').text('When would you like to schedule your service?');
        $('.ProgressBar-module__progress___703').attr('style', 'width: 75%');
        $('.service-request-form-content').html('<div class="SchedulingForm-module__schedulingForm___53e"><div class="SchedulingForm-module__radioGroup___4a0"><div class="RadioButton__wrapper___3R4 RadioButton__medium___1IX SchedulingForm-module__radioButton___5ef SchedulingForm-module__radioGroup___4a0-radiobutton"><input id="radio-0417323601663730" name="urgency" value="urgent" type="radio"><label for="radio-0417323601663730">I need it done in the next 24-48 hours</label></div><div class="RadioButton__wrapper___3R4 RadioButton__medium___1IX SchedulingForm-module__radioButton___5ef SchedulingForm-module__radioGroup___4a0-radiobutton"><input id="radio-8395763394606155" name="urgency" value="specific_date" type="radio"><label for="radio-8395763394606155">I have a specific time and date in mind</label></div><div class="RadioButton__wrapper___3R4 RadioButton__medium___1IX SchedulingForm-module__radioButton___5ef SchedulingForm-module__radioGroup___4a0-radiobutton"><input id="radio-5361744349553449" name="urgency" value="flexible" type="radio"><label for="radio-5361744349553449">I\'m flexible</label></div><div class="RadioButton__wrapper___3R4 RadioButton__medium___1IX SchedulingForm-module__radioButton___5ef SchedulingForm-module__radioGroup___4a0-radiobutton"><input id="radio-1531705377604815" name="urgency" value="price_only" type="radio"><label for="radio-1531705377604815">I\'m just looking for a price</label></div></div></div>');
        break;
      case 3:
        break;
     }
  })
});