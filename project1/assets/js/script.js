var project1;
var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
  if (this.readyState == 4 && this.status == 200) {
   project1 = JSON.parse(this.responseText);
    console.log(project1);
  }
};
xmlhttp.open("GET", "./assets/json/champs.json", true);
xmlhttp.send();


var body = document.body;
var question = 0;
var arr = new Array();

//initial intro question
var intro = document.createElement("h3");
intro.innerHTML = "What League of Legends Champion are you?";
body.appendChild(intro);

//first question select
var starter = document.createElement("h4");
starter.textContent = "Are you a Male or a Female?";
body.appendChild(starter);


//first menu
function generateOptions(a,b){
	
	
	//div for the first menu
	var firstChoice = document.createElement("div");
	firstChoice.className = "selection";
	body.appendChild(firstChoice);
	
	
	//create select and options for the first menu
		//select
		var first_select = document.createElement("select");
		
			//options
			var choice1 = document.createElement("option");
			var choice2 = document.createElement("option");
			var choice3 = document.createElement("option");
			
			//selects
			choice1.value = "Select";
			choice2.value = "Option1";
			choice3.value = "Option2";
			
			choice1.textContent = "Select";
			choice2.textContent = a;
			choice3.textContent = b;
			
			//append
			firstChoice.appendChild(first_select);
			first_select.appendChild(choice1);
			first_select.appendChild(choice2);
			first_select.appendChild(choice3);
			
			first_select.addEventListener("change", function(){
				
				arr.push(first_select.value.substring(6,7));
				console.log(arr);
				if(question == 0){
					
					var head1 = document.createElement("h4");
					head1.textContent = "Do you like carrying or playing a more supportive role?";
					body.appendChild(head1);
					
					generateOptions("Carry","Support");
				}
				if(question == 1){
					
					var head1 = document.createElement("h4");
					head1.textContent = "Do you like magic or swords?";
					body.appendChild(head1);
					
					generateOptions("Magic","Swords");
				}
				if(question == 2){
					
					var head2 = document.createElement("h4");
					head2.textContent = "Do you like spending time alone or with others?";
					body.appendChild(head2);
					
					generateOptions("Alone","Others");
				}
				
				
				if(question == 3){
					examineAnswers();
				}
				
				question++;
			});
			
}


function examineAnswers(){
	var name = "";
	//yes carries
	if(arr[0] == 1){
		
		//yes magic
		if(arr[1] == 1){
			
			//yes alone
			if(arr[2] == 1){
				name = "Darius";
			}
			else{
				name = "Yasuo";
			}
			//yes alone
			if(arr[3] == 1){
				name = "Trundle";
			}
			else{
			//
				name = "Kayn";
			}
		}
		else{
		//no carries
			

			if(arr[2] == 1){
				
				//male
				if(arr[3] == 1){
					name = "Kayn";
				}
				else{
					name = "Thresh";
				}
			}

		}
	}
	else{
	//female
		
	if(arr[1] == 1){
			
		//yes alone
		if(arr[2] == 1){
			name = "Lux";
		}
		else{
			name = "Vayne";
		}
		//yes alone
		if(arr[3] == 1){
			name = "Elise";
		}
		else{
		//
			name = "Caitlyn";
		}
	}
	else{
	//no carries
		

		if(arr[2] == 1){
			
			//male
			if(arr[3] == 1){
				name = "Vayne";
			}
			else{
			//f
				name = "Janna";
			}
		}
		else{
			

		}
		}
	}
	championData(name);
}

function championData(str){
		
	for(var i=0;i<project1.champs.length;i++){
		console.log("1: "+str + " 2:" + project1.champs[i].name);
		
		if(project1.champs[i].name == str){
			
			var champsDiv = document.createElement("div");
			champsDiv.className = "end";
			var champsInfo = document.createElement("ul");
			
			champsDiv.appendChild(champsInfo);
			
			var data1 = document.createElement("li");
			var data2 = document.createElement("li");
			var data3 = document.createElement("li");
			var data4 = document.createElement("li");
			var data5 = document.createElement("li");
			
			data1.textContent = project1.champs[i].name;
			data2.textContent = "Lane: " + project1.champs[i].lane;
			data3.textContent = "Role: " + project1.champs[i].role;
			data4.textContent = "Winrate: " + project1.champs[i].winrate;
			data5.textContent = "Description: " +project1.champs[i].description;
			
			champsInfo.appendChild(data1);
			champsInfo.appendChild(data2);
			champsInfo.appendChild(data3);
			champsInfo.appendChild(data4);
			champsInfo.appendChild(data5);
			
			var image = document.createElement("img");
			image.src = "./assets/img/" + project1.champs[i].image;
			image.alt = "Image of: " + str;
			
			body.appendChild(champsDiv);
			
			var imageDiv = document.createElement("div");
			imageDiv.id = "imgDiv";
			imageDiv.appendChild(image);
			champsDiv.appendChild(imageDiv);
			
			break;
		}
	}
	
}
	

generateOptions("Male","Female");