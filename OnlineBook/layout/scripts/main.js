const inputs = document.querySelectorAll(".input");

function addcl() {
	let parent = this.parentNode.parentNode;
	parent.classList.add("focus");
}

function remcl() {
	let parent = this.parentNode.parentNode;
	if (this.value == "") {
		parent.classList.remove("focus");
	}
}

function checkPassword(form) {
	password1 = form.pwd.value;
	password2 = form.conpwd.value;


	if (password1 != password2) {
		alert("\nPassword and Confirmpassword not match")
		return false;
	}

}

inputs.forEach(input => {
	input.addEventListener("focus", addcl);
	input.addEventListener("blur", remcl);
});