<div class="messages view">
<h2><?php  echo __('Message'); ?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($message['Message']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Description'); ?></dt>
		<dd>
			<?php echo h($message['Message']['description']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Date Message'); ?></dt>
		<dd>
			<?php echo h($message['Message']['date_message']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Vu'); ?></dt>
		<dd>
			<?php echo h($message['Message']['vu']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Id Profile Send'); ?></dt>
		<dd>
			<?php echo h($message['Message']['id_profile_send']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Id Profile Recu'); ?></dt>
		<dd>
			<?php echo h($message['Message']['id_profile_recu']); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Message'), array('action' => 'edit', $message['Message']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Message'), array('action' => 'delete', $message['Message']['id']), null, __('Are you sure you want to delete # %s?', $message['Message']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Messages'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Message'), array('action' => 'add')); ?> </li>
	</ul>
</div>
