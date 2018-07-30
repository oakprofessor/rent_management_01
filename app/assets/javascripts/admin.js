var dropdown = document.getElementsByClassName('dropdown-btn');
var j;

for (j = 0; j < dropdown.length; j++) {
  dropdown[j].addEventListener('click', function() {
    this.classList.toggle('active');
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === 'block') {
      dropdownContent.style.display = 'none';
    } else {
      dropdownContent.style.display = 'block';
    }
  });
}
