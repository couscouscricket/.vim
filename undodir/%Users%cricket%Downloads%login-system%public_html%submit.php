Vim�UnDo� h:��� �!��P����������x4w'��   *                 D       D   D   D    ^�N�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             ^�=�     �              �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             ^�=�    �         $    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ^�=�    �                -    // Quote and escape form submitted values   %    $id = $db -> quote($_POST['id']);       *    // Insert the values into the database   M    $result = $db -> query("INSERT INTO `test` (`id`) VALUES (" . $id . ")");    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       ^�=�     �                 <?php   #    require_once('connection.php');       // Our database object       $db = new Db();           2    $rows = $db -> select("SELECT * FROM `test`");       7    // Print the column names as the headers of a table       echo "<table><tr>";   ,    foreach (array_keys($rows[0]) as $key) {           echo "<th>{$key}</th>";       }       // Print the data       foreach ($rows as $row) {           echo "<tr>";   #        foreach($row as $_column) {   '            echo "<td>{$_column}</td>";   	        }           echo "</tr>";       }       echo "</table>";   ?>    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       ^�=�     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       ^�=�     �         	    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       ^�=�    �         
    �         
    5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                          ^�AE     �         !      #    require_once('connection.php');       // Our database object       $db = new Db();           2    $rows = $db -> select("SELECT * FROM `test`");       7    // Print the column names as the headers of a table       echo "<table><tr>";   ,    foreach (array_keys($rows[0]) as $key) {           echo "<th>{$key}</th>";       }       // Print the data       foreach ($rows as $row) {           echo "<tr>";   #        foreach($row as $_column) {   '            echo "<td>{$_column}</td>";   	        }           echo "</tr>";       }       echo "</table>";   ?>�         !      <?php5�_�                 	           ����                                                                                                                                                                                                                                                                                                                                                          ^�AG    �                 5�_�   	      
                  ����                                                                                                                                                                                                                                                                                                                                         
       V       ^�B     �               5�_�                            ����                                                                                                                                                                                                                                                                                                                                         
       V       ^�B     �      6   !    �          !    5�_�                           ����                                                                                                                                                                                                                                                                                                                                       5           V        ^�B(     �                            <?php   +            require_once('connection.php');   "            // Our database object               $db = new Db();                  :            $rows = $db -> select("SELECT * FROM `test`");              ?            // Print the column names as the headers of a table               echo "<table><tr>";   4            foreach (array_keys($rows[0]) as $key) {   '                echo "<th>{$key}</th>";               }               // Print the data   %            foreach ($rows as $row) {                   echo "<tr>";   +                foreach($row as $_column) {   /                    echo "<td>{$_column}</td>";                   }                   echo "</tr>";               }               echo "</table>";   
        ?>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        ^�B)    �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^�Bw     �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^�Bw     �      4           �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  v        ^�Bx     �         5    5�_�                             ����                                                                                                                                                                                                                                                                                                                                        3           V        ^�B     �                 +            require_once('connection.php');   "            // Our database object               $db = new Db();                  :            $rows = $db -> select("SELECT * FROM `test`");              ?            // Print the column names as the headers of a table               echo "<table><tr>";   4            foreach (array_keys($rows[0]) as $key) {   '                echo "<th>{$key}</th>";               }               // Print the data   %            foreach ($rows as $row) {                   echo "<tr>";   +                foreach($row as $_column) {   /                    echo "<td>{$_column}</td>";                   }                   echo "</tr>";               }               echo "</table>";5�_�                            ����                                                                                                                                                                                                                                                                                                                                                    V        ^�B�    �      !   "    �          "    5�_�                            ����                                                                                                                                                                                                                                                                                                                            !           !           V        ^�B�   	 �      "   #    �          #    5�_�                             ����                                                                                                                                                                                                                                                                                                                            #           #           V        ^�B�     �                  5�_�                            ����                                                                                                                                                                                                                                                                                                                            "           "           V        ^�B�   
 �      !   $      3    echo "<meta http-equiv='refresh' content='0'>";5�_�                            ����                                                                                                                                                                                                                                                                                                                                      "          V       ^�B�     �                        <?php   ;            echo "<meta http-equiv='refresh' content='0'>";   
        ?>    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^�B�     �                 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       ^�B�    �               .        <form action="test.php" method="post">5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�     �              �             5�_�                            ����                                                                                                                                                                                                                                                                                                                            )          )          V       ^�C�     �         *    5�_�                             ����                                                                                                                                                                                                                                                                                                                            *          *          V       ^�C�     �         ,          �         +    5�_�      !                      ����                                                                                                                                                                                                                                                                                                                            +          +          V       ^�C�     �                    fu�         ,    5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                v       ^�C�     �         0          function name($param)5�_�   !   #           "          ����                                                                                                                                                                                                                                                                                                                                                v       ^�C�    �         0          function submit($param)5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                v       ^�C�    �         0          function submit()       {5�_�   #   %           $           ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�     �             	   #    require_once('connection.php');       // Our database object       $db = new Db();           -    // Quote and escape form submitted values   %    $id = $db -> quote($_POST['id']);       *    // Insert the values into the database   M    $result = $db -> query("INSERT INTO `test` (`id`) VALUES (" . $id . ")");5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�     �         &    �         &    5�_�   %   '           &          ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�     �                        return null;5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�     �                    �   
             M    $result = $db -> query("INSERT INTO `test` (`id`) VALUES (" . $id . ")");�   	             *    // Insert the values into the database�      	          %    $id = $db -> quote($_POST['id']);�                -    // Quote and escape form submitted values�                    $db = new Db();    �                    // Our database object�                #    require_once('connection.php');5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�    �                 5�_�   (   *           )          ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�     �                +            require_once('connection.php');5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�     �         ,    �         ,    5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�    �         -      +            require_once('connection.php');5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�    �         -    5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                V       ^�C�    �                '        require_once('connection.php');5�_�   -   /           .           ����                                                                                                                                                                                                                                                                                                                                                  V        ^�I+    �                 <?php   #    require_once('connection.php');           function submit() {           // Our database object           $db = new Db();           1        // Quote and escape form submitted values   )        $id = $db -> quote($_POST['id']);       .        // Insert the values into the database   Q        $result = $db -> query("INSERT INTO `test` (`id`) VALUES (" . $id . ")");       }   ?>    5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                                  V        ^�IF    �                   �             5�_�   /   1           0      +    ����                                                                                                                                                                                                                                                                                                                                                  V        ^�IP    �               +            required_once('connection.php')5�_�   0   2           1          ����                                                                                                                                                                                                                                                                                                                                                  V        ^�I[    �               ,            required_once('connection.php');5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                  V        ^�I�     �             5�_�   2   5           3           ����                                                                                                                                                                                                                                                                                                                                                  V        ^�I�     �                 �              5�_�   3   6   4       5           ����                                                                                                                                                                                                                                                                                                                                                  V        ^�I�     �                SQL QUERY----5�_�   5   7           6           ����                                                                                                                                                                                                                                                                                                                                                  V        ^�I�     �         #      if(isset($_POST['submit']))   	        {5�_�   6   8           7           ����                                                                                                                                                                                                                                                                                                                                                          ^�I�     �         "      /echo "<meta http-equiv='refresh' content='0'>";   }�         "      if(isset($_POST['submit'])) {5�_�   7   9           8          ����                                                                                                                                                                                                                                                                                                                                                          ^�I�    �         "      ;            echo "<meta http-equiv='refresh' content='0'>";5�_�   8   :           9           ����                                                                                                                                                                                                                                                                                                                                                          ^�I�     �          "    �         "    5�_�   9   ;           :          ����                                                                                                                                                                                                                                                                                                                                                       ^�I�    �          )          -    // Quote and escape form submitted values   %    $id = $db -> quote($_POST['id']);       *    // Insert the values into the database   M    $result = $db -> query("INSERT INTO `test` (`id`) VALUES (" . $id . ")");�         )          $db = new Db();    5�_�   :   <           ;           ����                                                                                                                                                                                                                                                                                                                                                       ^�I�    �      !   )      >               echo "<meta http-equiv='refresh' content='0'>";5�_�   ;   =           <          ����                                                                                                                                                                                                                                                                                                                                                       ^�I�    �         )    5�_�   <   >           =   %   .    ����                                                                                                                                                                                                                                                                                                                                                        ^�M�    �   $   &   *      >        <form target="_blank" action="test.php" method="post">5�_�   =   ?           >   %       ����                                                                                                                                                                                                                                                                                                                                                        ^�M�    �   $   &   *      6        <form target="_blank" action="" method="post">5�_�   >   @           ?          ����                                                                                                                                                                                                                                                                                                                                                        ^�N,     �         *      )            if(isset($_POST['submit'])) {5�_�   ?   A           @          ����                                                                                                                                                                                                                                                                                                                                                        ^�N-    �         *      $            if(isset($_POST['s'])) {5�_�   @   B           A   %        ����                                                                                                                                                                                                                                                                                                                            %          (          V       ^�N�     �   $   %          &        <form action="" method="post">   1            id: <input type="text" name="id"><br>   !            <input type="submit">           </form>5�_�   A   C           B          ����                                                                                                                                                                                                                                                                                                                            %          %          V       ^�N�     �         &    �         &    5�_�   B   D           C          ����                                                                                                                                                                                                                                                                                                                            )          )          V       ^�N�     �         *    5�_�   C               D   )        ����                                                                                                                                                                                                                                                                                                                            *          *          V       ^�N�    �   (   )           5�_�   3           5   4           ����                                                                                                                                                                                                                                                                                                                                                  V        ^�I�     �              5�_�                           ����                                                                                                                                                                                                                                                                                                                                       3          V       ^�B    �              5�_�                             ����                                                                                                                                                                                                                                                                                                                                            /       V       ^�B     �      4        �       !   "    �          "      0 echo "<meta http-equiv='refresh' content='0'>";5�_�                             ����                                                                                                                                                                                                                                                                                                                                            /       V       ^�B     �      !        5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                   V        ^�AL     �                <?php�                #    require_once('connection.php');�                    // Our database object�                    $db = new Db();    �                 �      	          2    $rows = $db -> select("SELECT * FROM `test`");�      
           �   	             7    // Print the column names as the headers of a table�   
                 echo "<table><tr>";�                ,    foreach (array_keys($rows[0]) as $key) {�                        echo "<th>{$key}</th>";�                    }�                    // Print the data�                    foreach ($rows as $row) {�                        echo "<tr>";�                #        foreach($row as $_column) {�                '            echo "<td>{$_column}</td>";�                	        }�                        echo "</tr>";�                    }�                    echo "</table>";�                ?>5��