<?php
App::uses('AppController', 'Controller');
/**
 * Bankaccounts Controller
 *
 * @property Bankaccount $Bankaccount
 */
class BankaccountsController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Bankaccount->recursive = 0;
		$this->set('bankaccounts', $this->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Bankaccount->exists($id)) {
			throw new NotFoundException(__('Invalid bankaccount'));
		}
		$options = array('conditions' => array('Bankaccount.' . $this->Bankaccount->primaryKey => $id));
		$this->set('bankaccount', $this->Bankaccount->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Bankaccount->create();
			if ($this->Bankaccount->save($this->request->data)) {
				$this->Session->setFlash(__('The bankaccount has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The bankaccount could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Bankaccount->exists($id)) {
			throw new NotFoundException(__('Invalid bankaccount'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Bankaccount->save($this->request->data)) {
				$this->Session->setFlash(__('The bankaccount has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The bankaccount could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Bankaccount.' . $this->Bankaccount->primaryKey => $id));
			$this->request->data = $this->Bankaccount->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Bankaccount->id = $id;
		if (!$this->Bankaccount->exists()) {
			throw new NotFoundException(__('Invalid bankaccount'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Bankaccount->delete()) {
			$this->Session->setFlash(__('Bankaccount deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Bankaccount was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
