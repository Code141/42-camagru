<?php
// SECURITEE !
// MUST ASK IF LOGGED BEFORE ANY RESPONSE
class ajax extends Controller{


	public function pullTree($params = NULL){	
		$this->data['idUser'] = $params[0]; 
		$this->data['marble']['mytree'] = $this->load->model('marble', 'getTree', $this->data);
		echo '<script>';
		while ($this->data_array = $this->data['marble']['mytree']->fetch()){
			echo 'dataPuller.getTree('.$this->data['idUser'].', '.$this->data_array['id'].','.$this->data_array['id_parent_slice'].','.$this->data_array['id_objet'].');';
		}
		$this->data['marble']['mytree']->closeCursor();

		echo '</script>';
	}

	public function pullSlice($params = NULL){	
		$this->data['research'] = $params[0]; 
		$this->data['marble']['slice'] = $this->load->model('marble', 'getSliceById', $this->data);
		echo '<script>';
		
		while ($this->data_array = $this->data['marble']['slice']->fetch()){
			echo 'dataPuller.getSlice('.$this->data['research'].','.$this->data_array['id'].','.$this->data_array['id_adjectif'].','.$this->data_array['score'].');';
		}
		
		$this->data['marble']['slice']->closeCursor();

		echo '</script>';
	}

	public function pullObjet($params = NULL){	
		$this->data['idObjet'] = $params[0]; 
		$this->data['marble']['objet'] = $this->load->model('marble', 'getObjetName', $this->data);
		
		echo '<script>';
		
		while ($this->data_array = $this->data['marble']['objet']->fetch()){
			echo 'dataPuller.getObjetName('.$this->data['idObjet'].',\''.$this->data_array['name'].'\');';
		}
		
		$this->data['marble']['objet']->closeCursor();

		echo '</script>';
	}








	public function searchByMetaphone($params = NULL){	
		$this->data['research'] = $params['0'];
		$this->data['marble']['adjectifs'] = $this->load->model('marble', 'searchByMetaphone', $this->data);

		if(isset($this->data['marble']['adjectifs'])){
			$this->load->view('ajax/searchbymetaphone', $this->data);
		}
	}


	public function searchContextsForObjet($params = NULL){		

		$this->data['research'] = $params['0'];
		$this->data['name'] = $params['1'];
		$this->data['marble']['adjectifs'] = $this->load->model('marble', 'searchSliceByObjetId', $this->data);

		$this->load->view('ajax/searchcontextsforobjet', $this->data);

	}


	public function getSliceById($params = NULL)
	{		
		$this->data['research'] = $params['0'];//idslice
		$this->data['ctxslice'] = $params['1'];
		$this->data['name'] = $params['2'];
		$this->data['sliceOwned'] = $params['3'];
		$this->data['marble']['adjectifs'] = $this->load->model('marble', 'getSliceById', $this->data);

		if(isset($this->data['marble']['adjectifs'])){
			$this->load->view('ajax/slice', $this->data);
		}
	}


	public function addAdjSlice($params = NULL)
	{
		$this->data['slice'] = $params[0]; 
		$this->data['research'] = $params[1];
		//ASK IF ADJ EXIST AND GET HIS ID
		$this->data['marble']['id_obj'] = $this->load->model('marble', 'searchObjets', $this->data);
		while ($this->data_array = $this->data['marble']['id_obj']->fetch()){
			$this->data['id_add_adj'] = $this->data_array['id'];	
		}
		$this->data['marble']['id_obj']->closeCursor();

		//IF IT DON'T CREAT IT AND GET HER ID	
		if(!isset($this->data['id_add_adj'])){
			$this->load->model('marble', 'addAdjObjet', $this->data);	
			$this->data['marble']['id_obj'] = $this->load->model('marble', 'searchObjets', $this->data);
			while ($this->data_array = $this->data['marble']['id_obj']->fetch()){
				$this->data['id_add_adj'] = $this->data_array['id'];
			}
			$this->data['marble']['id_obj']->closeCursor();
		}
		//FINALLY ADD TO SLICE THIS ADJ ID
		$this->load->model('marble', 'addAdjSlice', $this->data);
	}


	public function destroyAdjSlice($params = NULL)
	{
		$this->data['destroyadjslice'] = $params[0]; 
		$this->load->model('marble', 'destroyAdjSlice', $this->data);
	}



	public function moveTreeNode($params = NULL){	
		$this->data['slicetomove'] = $params['0'];
		$this->data['moveto'] = $params['1'];

		$this->load->model('marble', 'updateParentSlice', $this->data);
	}

	public function refreshtree($params = NULL){	

		$this->data['research'] = $params['0'];
		$this->data['marble']['objet_id'] = $this->load->model('marble', 'searchByMetaphone', $this->data);
		$this->data['marble']['mytree'] = $this->load->model('marble', 'mytree', $this->data);

		$this->load->script('php', 'tree/makeatree');

		while ($this->data_array = $this->data['marble']['mytree']->fetch()){
			$bddBranches[$this->data_array['id']]['id'] = $this->data_array['id'];
			$bddBranches[$this->data_array['id']]['label'] = $this->data_array['name'];
			$bddBranches[$this->data_array['id']]['parent_id'] = $this->data_array['id_parent_slice'];
		}
		$this->data['marble']['mytree']->closeCursor();

		$userTree = createTree($bddBranches);
		echo'
		<script>

		userTree = '.json_encode($userTree).';
		objnew[0].jsonTree = userTree;

		$( "#list_tree" ).unbind();
		$(function() {
			$(\'#list_tree\').tree({
				data: userTree,
				dragAndDrop: true,
			});
});


</script>
';
}

public function addSlice($params = NULL){	
	$this->data['research'] = $params['0'];

	$this->data['marble']['objet_id'] = $this->load->model('marble', 'searchObjets', $this->data);
	while ($this->data_array = $this->data['marble']['objet_id']->fetch()){
		$this->data['objetid'] = $this->data_array['id'];
	}
	$this->data['marble']['objet_id']->closeCursor();

	if (!isset($this->data['objetid'])) {
		$this->load->model('marble', 'addAdjObjet', $this->data);
		$this->data['marble']['objet_id'] = $this->load->model('marble', 'searchObjets', $this->data);
		while ($this->data_array = $this->data['marble']['objet_id']->fetch()){
			$this->data['objetid'] = $this->data_array['id'];
		}
		$this->data['marble']['objet_id']->closeCursor();
	}

	$this->load->model('marble', 'addSlice', $this->data);
}

public function removeSlice($params = NULL){	
	$this->data['research'] = $params['0'];

	$this->data['marble']['objet_id'] = $this->load->model('marble', 'searchObjets', $this->data);
	while ($this->data_array = $this->data['marble']['objet_id']->fetch()){
		$this->data['objetid'] = $this->data_array['id'];
	}
	$this->data['marble']['objet_id']->closeCursor();

	if (!isset($this->data['objetid'])) {
		$this->load->model('marble', 'addAdjObjet', $this->data);
		$this->data['marble']['objet_id'] = $this->load->model('marble', 'searchObjets', $this->data);
		while ($this->data_array = $this->data['marble']['objet_id']->fetch()){
			$this->data['objetid'] = $this->data_array['id'];
		}
		$this->data['marble']['objet_id']->closeCursor();
	}

	$this->load->model('marble', 'addSlice', $this->data);
}



public function addFriend($params = NULL){	
	$this->data['whichuserid'] = $params['0'];
	$this->data['whichusername'] = $params['1'];
		// TODO VERIFIE AVANT D'AJOUTER
	
	$isafriend = $this->load->model('friends', 'isAFriend', $this->data);

	$count = $isafriend->rowCount();
	
	if($count==0){
		$this->load->model('friends', 'addFriend', $this->data);
		echo 'An invitation has been sent to '.$this->data['whichusername'];
	}elseif ($count==1){
		echo 'You already asked '.$this->data['whichusername'].' to be your friend';
	}elseif($count ==2){
		echo 'COPAIIIING';
	}

	
	?>
	
	<script>
	fadeOut('messageboxmasque', 1500, 50);
	</script>
	<?php

}

public function acceptAsFriend($params = NULL){	
	$this->data['whichuserid'] = $params['0'];
	$this->data['whichusername'] = $params['1'];
		// TODO VERIFIE AVANT D'AJOUTER
	
	
	$this->load->model('friends', 'addFriend', $this->data);
	echo'HALLELUYA !!';

	
	?>
	
	<script>
	fadeOut('messageboxmasque', 1500, 50);
	</script>
	<?php

}

public function declineAsFriend($params = NULL){	
	$this->data['whichuserid'] = $params['0'];
	$this->data['whichusername'] = $params['1'];
		// TODO VERIFIE AVANT D'AJOUTER
	
	
	echo'NON-STOP';

	
	?>
	
	<script>
	fadeOut('messageboxmasque', 1500, 50);
	</script>
	<?php

}

}
