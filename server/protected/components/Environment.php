<?php

/**
 * Application environment
 * 
 * @author henry
 */
class Environment {
	
	/**
	 * Recursively extract configuration values from Yii configuration parameters based on 
	 * dot notation.  
	 * 
	 * @param string $name, A dot notation string
	 * @param string $default, A default value
	 * @return string
	 */
	static function params($name, $default=null) {
		// no value
		if($name == null) return $default; 
		
		$nameList = explode('.', $name);
		$paramList = Yii::app()->params;
		
		while($n = array_shift($nameList)) {
			if(is_array($paramList)) {
				// Value does not exist
				if(!isset($paramList[$n])) {
					return $default;
					
				// Dive deeper
				} else {
					$paramList = $paramList[$n];
				}
				
			// Run out of parameter hashs to parse
			} else {
				return $default;
			}
		}
		
		return $paramList;
	}
	
}