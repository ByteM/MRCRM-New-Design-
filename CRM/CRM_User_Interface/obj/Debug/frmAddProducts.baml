   M S B A M L   `   `   `  ����  CRM_User_Interface'    !CRM_User_Interface.frmAddProducts   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  frmAddProducts��5   	   $��473.684��6    $��904.512��61    � WindowStartupLocation$ CenterScreen=�6A    � AllowsTransparency .  � WindowStyle$
 None=�6�   .��5      �� 
���   �$��15,30,15,20q�6!   $
��Left=�6?   $	��473��6Z   $	��Top=�6g   $	��905��6   ._�5   
   � .+�5      �� $��Product Details��6   $
��Left=�6.   $��
-2,-28,0,0q�6I   $	��Top=�6]   ���	#FFFCFCFC$
��Bold"�6�   $��Verdana)�6�   �� 5	      -   5         ��Name$ btnClose��5	      $��X��6'   $
��Left=�63   $��849,-26,0,0q�6N   $	��Top=�6c   $��26��6{   $
��Bold"�6�   ���	#FFFCFCFC6�   �� 5
      $��Search:��6   $
��Left=�6&   $��	80,11,0,0q�6A   $	��Top=�6T   $��Verdana)�6l   �� 5      -   5         ��Name$ txtAdm_AllProducts_Search��5      $
��Left=�69   $��23��6T   $��
349,12,0,0q�6`    �� TextWrapping$
 Wrap=�6t   $	��Top=�6�   $	��216��6�   6�   �� 5      -   5        $ btnFollowupBrowse��5      $
��Left=�60   $��
572,11,0,0q�6K   $	��Top=�6_   $��35��6w   $��25��6�   ���	#FFFCFCFC$��Verdana)�6�   .��5      �� $��Images/Search.ico��6   $
��Fill=�63   5      �� 5      -   5        $ btnNewProducts��5      $��New Products��6-   $
��Left=�6D   $��
623,12,0,0q�6_   $	��Top=�6s   $	��100��6�   $��24��6�   $��Verdana)�6�   � 5      $
��Left=�6   $	��375��6.   $��4,48,0,0q�6;   $	��Top=�6M   $	��867��6e   ���	#FFF0F0F0.+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgvAdm_AllProducts��5         
IsReadOnly . $	��Top=�6I   $	��375��6a   	   AutoGenerateColumns	 .  
   	RowHeight$
 25Q�6�   ���	#FFFCFCFC$��Verdana)�6�      ColumnHeaderHeight$ 30Q�6�      GridLinesVisibility$
 None=�6  $��0q�68     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6-      
Visibility$ Hidden=�69      Width5  /System.Windows.Controls.DataGridLengthConverter$ 0 6M   -   5        grdFinalPro_ID1��   SortMemberPath$ ID��5   q   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6�   �� *ID+ �� Mode$ TwoWay=�  5      $ Product Type��6-   $	 172 6C   -   5        grdFinalPro_Name2��$ Product_Name��5   k    6�   �� *Product_Name+$ TwoWay=�  5      $ 
Brand Name��6-   $	 172 6A   -	   5        grdFinalPro_MobileNo2��$ 
Brand_Name��5   m    6�   �� *
Brand_Name+$ TwoWay=�  5      $ Product Category��6-   $	 165 6G   -
   5        grdFinalPro_PhoneNo2��$ Product_Category��5   r    6�   �� *Product_Category+$ TwoWay=�  5      $ Model No��6-   $	 164 6?   -   5        grdFinalPro_Products2��$ Model_No��5   k    6�   �� *
Model_No+$ TwoWay=�  5      $ Colour��6-   $	 110 6=   -   5        grdFinalPro_Qty2��$ Color��5   d    6{   �� *Color+$ TwoWay=�  5      $ Price��6-   $ 80 6<   -   5        grdFinalPro_FinalPrice1��$ Price��5   i    6�   �� *Price+$ TwoWay=�5      5      �� 5      -   5        $ btnDone��5      $
��Done��6&   $
��Left=�65    �� 	IsDefault . $��
739,12,0,0q�6b   $	��Top=�6v   $��75��6�   $��Verdana)�6�   $��24��6�   6�   �� 5      -   5         ��Name$ cmbAdm_AllProducts_Search��5       �� Text$ -None-��6:   $
��Left=�6H   $��
140,12,0,0q�6c   $	��Top=�6w   $	��202��6�    �� 
IsEditable . $��Verdana)�6�   .@�5      �� .��6   Product Type6-   �� 5       .��6   Brand6&   �� 5!      .��6   Product Category61   �� 5"      .��6   Model6&   �� 5#      .��6   Color6&   �� 5$      .��6   Price6&   5%      � 5&      $
��Left=�6   $	��196��6.   $��127,453,0,-226q�6;   $	��Top=�6S   $	��470��6k   ���	#FFFBF7F5.+�5'      �� -   5        $ txtPRoductName��5'      $
��Left=�62   $��23��6M   $��	10,10,0,0q�6Y   $
 Wrap=�6l   $	��Top=�6�   $	��288��6�   �� 5(      -   5        $ txtBrandName��5(      $
��Left=�60   $��23��6K   $��	10,40,0,0q�6W   $
 Wrap=�6j   $	��Top=�6~   $	��288��6�   �� 5)      -   5        $ txtPRoductCategory��5)      $
��Left=�66   $��23��6Q   $��	10,69,0,0q�6]   $
 Wrap=�6p   $	��Top=�6�   $	��288��6�   �� 5*      -   5        $ 
txtModelNo��5*      $
��Left=�6.   $��23��6I   $��	10,99,0,0q�6U   $
 Wrap=�6h   $	��Top=�6|   $	��288��6�   �� 5+      -   5        $ txtColor��5+      $
��Left=�6,   $��23��6G   $��
10,128,0,0q�6S   $
 Wrap=�6g   $	��Top=�6{   $	��288��6�   �� 5,      -   5        $ txtPrice��5,      $
��Left=�6,   $��23��6G   $��
10,158,0,0q�6S   $
 Wrap=�6g   $	��Top=�6{   $	��288��6�   �� 5-      -   5        $ txtProductsID��5-      $
��Left=�61   $��23��6L   $��
362,10,0,0q�6X   $
 Wrap=�6l   $	��Top=�6�   $��48��6�   $��Verdana)�6�   5.      5/      50      52      