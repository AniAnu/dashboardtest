<?php
App::uses('AppController', 'Controller');
/**
 * Plans Controller
 *
 * @property Plan $Plan
 */

class PlansController extends AppController {

public function composant($liste=null)
{	$this->loadModel("Composant");
$coordonner=explode(',',$liste);
$type=explode(',',$coordonner[2]);
$composants=$this->Composant->find('all');
$TableTails=$this->Session->read("TableTail");
	$this->exemple($coordonner[0].','.$coordonner[1]);
	$this->set(compact('composants','TableTails','coordonner'));
}
public function colone($numLigne=null)
{
	$this->loadModel('TypeComponent');
	$types=$this->TypeComponent->find('all');
$tab=explode(',',$numLigne); 
	$this->set(compact('tab','types'));
}
public function divligne($numLigne=null)
{
	$tab=explode(',',$numLigne); 

	$this->set(compact('tab'));
}
public function editcoponent($liste=null)
{

}
public function budget($liste=null)
{
	$index=explode(',', $liste);
	if(count($index)!=3)
	{
		$index=explode(',-,',$liste);
       for ($i=1; $i <count($index)-1 ; $i++) { 
     	$listeindex=explode(',',$index[$i]);
     	$budget=array(
     		'plan_id'=>'1',
     		'reference'=>explode(',', $index[0])[0].'-'.explode(',', $index[0])[1],
     	     'total'=>explode(',', $index[count($index)-1]));
     	for ($j=0; $j <count($listeindex); $j++) { 
     	$data=array(
     		'item'=>$listeindex[0],
     		'amount'=>$listeindex[1],
     		'In-kind'=>$listeindex[2],
     		'source'=>$listeindex[3],
     		'status'=>$listeindex[4],
     		'budget_id'=>'1');	
     	}
     }
     die();
	}else
	{
$this->set(compact('liste'));
}

}
public function jobs()
{

}
public function resources()
{

}
public function textarea($liste=null)
{
	$this->set(compact('liste'));
}
public function exemple($liste=null)
{
	$index=explode('-,',$liste);

	if(count($index)==3){
	$TableTails=$this->Session->read("TableTail");
	//$i=count($TableTails[$index[0]][$index[1]]['data']);
     $this->Session->write('TableTail.'.$index[0].'.'.$index[1].'.data',htmlspecialchars($index[2]));
       }
$TableTails=$this->Session->read("TableTail");
$this->set(compact('index','TableTails'));
}
public function recording($id=null)
{
$detailsession=$this->Session->read("TableTail");
	$content="";
for ($i=0; $i <count($detailsession) ; $i++) { 
	
for ($j=0; $j <count($detailsession[$i]) ; $j++) { 
		$content.=$i."<>".$j."=.=".$detailsession[$i][$j]['type']."?!?".$detailsession[$i][$j]['color']."?!?".$detailsession[$i][$j]['display']."?!?".$detailsession[$i][$j]['data']."?!?".$detailsession[$i][$j]['duplicate']."!!-!!";
	}	
}
$id_profile=$this->Session->read('id');
$data=array('id_plan'=>$id,
			'id_profile'=>$id_profile,
			'date_modification'=>date("Y-m-d h:s:i"),
			'content'=>$content
	);
$this->loadModel('DetailPlan');
$this->DetailPlan->create();
$this->DetailPlan->save($data);
}

public function index()
{
//$this->layout=null;
		//SessionComponent::delete('TableTail');
		$this->loadModel('TypeComponent');
		$types=$this->TypeComponent->find('all');
		$listes=array("user1","user2","user3","user4");
		$this->set(compact('types','listes'));
    $id=$this->Session->read('id');
 
	$this->loadModel('Historical');
	//$this->loadModel('Plan');
	$plans=$this->Plan->find('first',array('conditions'=>array('Plan.profile_id'=>$id)));
	
	$this->loadModel('PersonalOffer');
	$this->loadModel('PermissionAccess');
	$histrical=$this->Historical->find('first',array('conditions'=>['Historical.user_id'=>$id]));
	// print_r($histrical);
	// echo date("Y-m-d");
	if($histrical)
	{
	 $date= explode('=>',$histrical['Historical']['period']);
	 if((date("Y-m-d")>$date[0])&&(date("Y-m-d")<$date[1]))
		{
		$personalOffers=$this->PersonalOffer->find('all',array('conditions'=>
		 array('PersonalOffer.historical_id'=>$histrical['Historical']['id'])));
		$tab=0;
		foreach ($personalOffers as $value) 
			$tab[]=$value['PersonalOffer']['id'];

		$PermissionAccesses=$this->PermissionAccess->find('all',
			array('conditions'=>array('PermissionAccess.personal_offers_id'=>$tab)));
		//SessionComponent::delete('TableTail');
		$this->loadModel('TypeComponent');
		$types=$this->TypeComponent->find('all');
		$listes=array("user1","user2","user3","user4");
		$this->set(compact('types','listes','plans'));
       }else
		{
		 $access=array('access'=>false);
	     $this->set((compact('access')));
		}
	}
	$this->detailPlans($plans['Plan']['id']);
$this->tableau();

}
public function detailPlans($id=null)
{
$this->loadModel('DetailPlan');
$plans=$this->Plan->find('first',array('conditions'=>array('Plan.id'=>$id)));
$detailplans=$this->DetailPlan->find('first',['conditions'=>['DetailPlan.id_plan'=>$id],'order'=>['DetailPlan.id'=>'DESC']]);
if($detailplans)
{
$lignecolone=explode('!!-!!',$detailplans['DetailPlan']['content']);
// echo "<pre>";
// print_r($lignecolone);
// echo "<?pre>";
for ($k=0; $k <count($lignecolone)-1 ; $k++) { 
	$indexI=explode('<>',$lignecolone[$k])[0];
	$colone=explode('=.=',explode('<>',$lignecolone[$k])[1]);
    $content=explode('?!?',$colone[1]);
	$indexJ=$colone[0];
	$detail[$indexJ]=array(
			'type'=> $content[0],
			'color'=>$content[1],
			'display'=>$content[2],
			'data'=>$content[3],
			'duplicate'=>$content[4]
			);
$TableTail[$indexI]=$detail;
}
$this->Session->write("TableTail",$TableTail);
return null;

}
}
public function tableau($coordonner=null)
{

$TableTails=$this->Session->read("TableTail");
	if($coordonner!=null)
	{
$coordonners=explode(',',$coordonner);
$detail="";
$tableaux="";
if($coordonners[1])
for ($i=0; $i <$coordonners[0]+1 ; $i++) { 
	for ($j=0; $j <$coordonners[1]+1 ; $j++) { 	
		$detail[$j]=array(
			'type'=>$this->gettypes($j),
			'color'=>$this->getcolor($i,$j),
			'display'=>$this->getdisplay($j),
			'data'=>$this->getData($i,$j),
			'duplicate'=>$this->getdeblock($i,$j)
			);
}
$tableaux[$i]=$detail;
}
if($tableaux)
$this->Session->write("TableTail",$tableaux);
}else
{
$coordonners=array(count($TableTails),count($TableTails[0]));
}
if(count($TableTails)==0)
{$coordonners=array(3,5);}

$TableTails=$this->Session->read("TableTail");
$this->set(compact('TableTails','coordonners'));
}

public function linkWeb($id=null)
{
	
    $this->loadModel('Linkweb');
$linkweb=$this->Linkweb->find('first',array('conditions'=>array('Linkweb.plan_id'=>$id)));
if(count($linkweb))
{
	echo "127.0.0.1/sou_project/sm/plans/link/".$linkweb['Linkweb']['lien'];
	die();
}else
{
	$reference= $this->random('32');
    $link="127.0.0.1/sou_project/sm/plans/link/".$reference;
    echo $link;
    $date=array('lien'=>$reference,'plan_id'=>$id);
    $this->Linkweb->create();
    $this->Linkweb->save($date);
	die();
}
}
public function link($reference=null)
{
	if ($this->request->is('post')) 
{
	$this->loadModel('Comment');
	$this->Comment->create();
	$data=array('plan_id'=>$this->request->data['id'],
				'ref_cellule'=>$this->request->data['ref'],
				'email_send'=>$this->request->data['email'],
				'nom'=>$this->request->data['name'],
				'date_send'=>date('Y-m-d h:s:i'),
				'message'=>$this->request->data['message'],
				'email_recive'=>"");
	$this->Comment->save($data);
$plan_id=$this->request->data['id'];
}
$this->loadModel('DetailPlan');
	if($reference)
	{
	$this->loadModel('Linkweb');
$linkweb=$this->Linkweb->find('first',array('conditions'=>array('Linkweb.lien'=>$reference)));
	$plan_id=$linkweb['Linkweb']['plan_id'];
	}

	$plans=$this->Plan->find('first',array('conditions'=>array('Plan.id'=>$plan_id)));
$detailplans=$this->DetailPlan->find('first',['conditions'=>['DetailPlan.id_plan'=>$plan_id],'order'=>['DetailPlan.id'=>'DESC']]);
if($detailplans)
{
$lignecolone=explode('!!-!!',$detailplans['DetailPlan']['content']);
for ($k=0; $k <count($lignecolone)-1 ; $k++) { 
	$indexI=explode('<>',$lignecolone[$k])[0];
	$colone=explode('=.=',explode('<>',$lignecolone[$k])[1]);
    $content=explode('?!?',$colone[1]);
	$indexJ=$colone[0];
	$detail[$indexJ]=array(
			'type'=> $content[0],
			'color'=>$content[1],
			'display'=>$content[2],
			'data'=>$content[3],
			'duplicate'=>$content[4]
			);
$TableTail[$indexI]=$detail;
}
}

$detailplans=$TableTail;
$coordonners=array(count($TableTail),count($TableTail[0]));

$this->set(compact('linkweb','plans','detailplans','coordonners'));

}



public function table()
{
	$this->layout=null;
		//SessionComponent::delete('TableTail');
		$this->loadModel('TypeComponent');
		$types=$this->TypeComponent->find('all');
		$listes=array("user1","user2","user3","user4");
		$this->set(compact('types','listes'));
    $id=$this->Session->read('id');
 
	$this->loadModel('Historical');
	//$this->loadModel('Plan');
	$plans=$this->Plan->find('first',array('conditions'=>array('Plan.profile_id'=>$id)));
	
	$this->loadModel('PersonalOffer');
	$this->loadModel('PermissionAccess');
	$histrical=$this->Historical->find('first',array('conditions'=>['Historical.user_id'=>$id]));
	// print_r($histrical);
	// echo date("Y-m-d");
	if($histrical)
	{
	 $date= explode('=>',$histrical['Historical']['period']);
	 if((date("Y-m-d")>$date[0])&&(date("Y-m-d")<$date[1]))
		{
		$personalOffers=$this->PersonalOffer->find('all',array('conditions'=>
		 array('PersonalOffer.historical_id'=>$histrical['Historical']['id'])));
		$tab=0;
		foreach ($personalOffers as $value) 
			$tab[]=$value['PersonalOffer']['id'];

		$PermissionAccesses=$this->PermissionAccess->find('all',
			array('conditions'=>array('PermissionAccess.personal_offers_id'=>$tab)));
		//SessionComponent::delete('TableTail');
		$this->loadModel('TypeComponent');
		$types=$this->TypeComponent->find('all');
		$listes=array("user1","user2","user3","user4");
		$this->set(compact('types','listes','plans'));
       }else
		{
		 $access=array('access'=>false);
	     $this->set((compact('access')));
		}
	}
}
public function view($liste=null)
{
	echo $liste;
die();
}
 public function delete($liste=null)
 {
$index=explode(',',$liste);
 	$this->Session->delete('TableTail.'.$index[0].'.'.$index[1].'.data.'.$index[2]);
 	return null;
 }

public function editExemple($liste=null)
{
	$index=explode(',',$liste);
	$this->Session->write('TableTail.'.$index[0].'.'.$index[1].'.data.'.$index[2],$index[3]);
return null;
}
public function listeusergroups($liste=null)
{
	if($liste=="groups")
	{
$listes=array("groupe1","groupe2","groupe3","groupe4");
	}else
	{
		$listes=array("user1","user2","user3","user4");
	}
	$this->set(compact('listes'));
}
public function edit($liste=null)
{
	$detailsession=$this->Session->read("TableTail");
	echo "<pre>";
	print_r($detailsession);
echo "</pre>";
	die();
}

public function getdeblock($i,$j)
{
// if($this->Session->read('TableTail.0.0.duplicate')=="block")
// return $this->Session->read('TableTail.'.$i.'.'.$j.'.duplicate');
// else if($this->Session->read('TableTail.0.0.duplicate')=="none")
return $this->Session->read('TableTail.0.0.duplicate');
	
}
public function getData($i,$j)
{
	return $this->Session->read('TableTail.'.$i.'.'.$j.'.data')?
	$this->Session->read('TableTail.'.$i.'.'.$j.'.data'):"";
}
public function getcolor($i,$j)
{
	if($this->Session->read('TableTail.'.$i.'.'.$j.'.color'))
		$color= $this->Session->read('TableTail.'.$i.'.'.$j.'.color');
		else if($this->Session->read('TableTail.'.$i.'.0'.'.color'))
         $color= $this->Session->read('TableTail.'.$i.'.0'.'.color');
		 else if($this->Session->read('TableTail.0.'.$j.'.color'))
	    $color= $this->Session->read('TableTail.0.'.$j.'.color');
	else $color= $this->Session->read('TableTail.0.0.color');;
return $color;

}
public function gettypes($j=null)
{
return ($this->Session->read('TableTail.1.'.$j.'.type'))?
$this->Session->read('TableTail.1.'.$j.'.type'):"";
}
public function getdisplay($j=null)
{
return ($this->Session->read('TableTail.0.'.$j.'.display'))?
$this->Session->read('TableTail.0.'.$j.'.display'):"";
}
public function colors($liste=null)
{

$indexcolor=explode(',',$liste);

$this->Session->delete('TableTail.'.$indexcolor[0].'.'.$indexcolor[1].'.color');
$this->Session->write('TableTail.'.$indexcolor[0].'.'.$indexcolor[1].'.color',$indexcolor[2]);
$this->tableau($indexcolor[3].",".$indexcolor[4]);
exit;	
}
public function typeCom($liste=null)
{
$indexcolor=explode(',',$liste);
$this->Session->delete('TableTail.1.'.$indexcolor[0].'.type');
$this->Session->write('TableTail.1.'.$indexcolor[0].'.type',$indexcolor[1]);
exit;	
}
public function displaycol($liste=null)
{
$indexcolor=explode('.',$liste);
$display=explode(',',$indexcolor[1]);
$this->Session->delete('TableTail.0.'.$indexcolor[0].'.display');
$this->Session->write('TableTail.0.'.$indexcolor[0].'.display',$display[0]);
$this->tableau($display[1].",".$display[2]);
exit;	
}
public function blockage($type=null)
{
	$this->Session->write('TableTail.0.0.duplicate',$type);
}

public function boite()
{

}
public function deletecolone($liste=null)
{
	$index=explode(',', $liste);
	print_r($index);
	$TableTails=$this->Session->read("TableTail");
	for ($i=0; $i <$index[0]+1; $i++) { 
		$this->Session->delete('TableTail.'.$i.'.'.$index[2]);
		$this->Session->write('TableTail.'.$i,array_values($this->Session->read("TableTail.".$i)));
	}
	$TableTails2=$this->Session->read("TableTail");
	echo "<pre>";
	print_r($TableTails2);
	echo "</pre>";
	$this->Session->write("TableTail",$TableTails2);
$this->tableau($index[0].",".intval($index[0]-1));
	exit;
}
public function blockagecellule($liste=null)
{$index=explode(',', $liste);
$this->Session->write('TableTail.'.$index[0].'.'.$index[1].".",$index[2]);
}



public function random($car) {
$string = "";
$chaine = "abcdefghijklmnpqrstuvwxyABCDEFGHIJKLMNPQRSTUVWXY0123456789";
srand((double)microtime()*1000000);
for($i=0; $i<$car; $i++) {
$string .= $chaine[rand()%strlen($chaine)];
}
return $string;
}
}

