pipeline {
    stages {
      stage {
	        steps {
		          sh 'terraform init'
		       }
		   }
        stage {
	        steps {
		          sh 'terraform plan'
		       }
		   }
    }
}
      
       
      
