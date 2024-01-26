if (document.body.classList.contains('confirmation_questions') && document.body.classList.contains('index')) {
  function addHiddenFieldToForm(buttonId, fieldName, fieldValue) {
    document.getElementById(buttonId).addEventListener('click', function() {
      let form = this.form;
      let hiddenField = document.createElement('input');
      hiddenField.type = 'hidden';
      hiddenField.name = fieldName;
      hiddenField.value = fieldValue;
      form.appendChild(hiddenField);
    });
  }

  document.addEventListener('DOMContentLoaded', function() {
    addHiddenFieldToForm('draft-button', 'status', 'draft');
    addHiddenFieldToForm('submit-button', 'status', 'submitted');
  });
}
