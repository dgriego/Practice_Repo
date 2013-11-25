	<?php

	if(@$_REQUEST['id']){
			$sql = "select st.name from clones c ";
			$sql .= "left join sales_territories_clones as stc on c.id = stc.clone_id " ;
			$sql .=	"left join sales_territories as st on stc.sales_territory_id = st.id ";
			$sql .=	"where c.id = ? ";
			$params = array({$_REQUEST['id']});
			$sales_territory = $clones->db->run_secure_query($sql, $params);


			$sales_territory = $clones->db->query(
<<<EOT
				select st.name from clones c 
				left join sales_territories_clones as stc on c.id = stc.clone_id 
				left join sales_territories as st on stc.sales_territory_id = st.id
				where c.id = {$_REQUEST['id']}
EOT
			);
			if($clones->db->numRows($sales_territory)) list($sales_territory) = $clones->db->fetchArray($sales_territory);
		}

		



		$users = array();
('select id as user_id,login as username from '
	.$jrs_sms->db->db_config['master']['indexer'].'.users u left join '
	.$jrs_sms->db->db_config['master']['indexer']
	.'.roles_users ru on u.id = ru.user_id and (ru.role_id = 8 || ru.role_id = 9) 
	where ru.role_id');
while($row = $jrs_sms->db->fetchArray($uq)) $users[] = $row;

		$users = array();
		$sql = "select id as user_id,login as username from "
		$sql.= "{$jrs_sms->db->db_config['master']['indexer']}.users u left join "
		$sql.= "{$jrs_sms->db->db_config['master']['indexer']}.roles_users ru on "
		$sql.= "u.id = ru.user_id "
		$sql.= "and (ru.role_id = 8 || ru.role_id = 9) where ru.role_id"
		$uq = $jrs_sms->db->run_secure_query($sql);




while($row = $jrs_sms->db->fetchArray($uq)) $users[] = $row;







