   M S B A M L   `   `   `  ����  CRM_User_Interface&     CRM_User_Interface.StockProducts   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  frmCRM_EmpDetailsEdit��5      $	��448��6&   $��988.415��63    � AllowsTransparency .  � WindowStyle$
 None=�6]   
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      �� 
���   �$��10,20,10,15q�6!   $	��446��6?   $	��Top=�6L    �� CornerRadius$ 10��6d   ._�5   
   � -   5         �Name$ grd_StockDetails��5      $y�Visible=�6)   $
��Left=�6C   $	��400��6^   $��0,5,0,-5q�6k   $	��Top=�6}   $	��968��6�   ���	#FFF0F0F0.+�5
      �� -   5         ��Name$ btnAdm_StockDetails_Exit��5
      $
��Exit��67   $
��Left=�6F   $��	893,2,0,0q�6a   $	��Top=�6t   $��75��6�   $��24��6�   6�   �� 5      $��Stock Details��6   $
��Left=�6,   $��2,0,0,0q�6G   $	��Top=�6X   $
��Bold"�6p   $��20(�6�   � 5      $��	8,31,10,0q�6   
�������.+�5      �� -   5        $��grpDealer_Search4��5   +   $��Search��6   $
��Left=�6D   $	��Top=�6_   $	��950��6w   $��64��6�   .��5      � $	��Top=�6   $��44��64   ���	#FFF0F0F0.+�5      �� $��Price:��6    $
��Left=�61   $��6,2,0,0q�6L   $	��Top=�6]   $��57��6u   �� 5      -   5         ��Name$&  txtAdm_Stock_Filter_Search_Price��5   "   $��23��6L   $��
63,7,727,0q�6X    �� TextWrapping$
 Wrap=�6l   $	��Top=�6�   6�   �� 5      $��
Filter By:��6    $
��Left=�65   $��	216,5,0,0q�6P   $	��Top=�6c   $��57��6{   �� 5      -   5        	 ��Name$	 cmbAdm_StockFilter_Search��5   #   $
��Left=�6F   $��
286,12,0,0q�6a   $	��Top=�6u   $	��254��6�   
 �� 
IsEditable
 . 6�   �� 5      -   5        $  txtAdm_Stock_Filter_Search��5   "   $
��Left=�6F   $��23��6a   $��	563,8,0,0q�6m   $
 Wrap=�6�   $	��Top=�6�   $	��262��6�   6�   �� 5      -   5        $ btnAdm_StockD_Refresh��5   !   $��Refresh��6@   $
��Left=�6R   $��	838,8,0,0q�6m   $	��Top=�6�   $��75��6�   6�   5      5      &   System.Windows.Controls.DataGrid  5      -	   5          Name$ dgvAdm_StockDetails��5      $��6,60,2,0q�68   $	��Top=�6J   $	��299��6b      AutoGenerateColumns .     	RowHeight$ 25Q�6�      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Domain Name��6-      Width5  /System.Windows.Controls.DataGridLengthConverter$	 110 6B   -
   5        grdFinalPro_C_Date1��   SortMemberPath$ Domain_Name��5   l   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6�   �� *Domain_Name+ �� Mode$ TwoWay=�  5      $ Product Type��6-   $	 110 6C   -   5        grdFinalPro_Name1��$ Product_Name��5   k    6�   �� *Product_Name+$ TwoWay=�  5      $ 
Brand Name��6-   $	 110 6A   -   5        grdFinalPro_MobileNo1��$ 
Brand_Name��5   m    6�   �� *
Brand_Name+$ TwoWay=�  5      $ Product Category��6-   $	 140 6G   -   5        grdFinalPro_PhoneNo1��$ Product_Category��5   r    6�   �� *Product_Category+$ TwoWay=�  5      $ Model No��6-   $	 100 6?   -   5        grdFinalPro_Products1��$ Model_No��5   k    6�   �� *
Model_No+$ TwoWay=�  5      $ Colour��6-   $	 100 6=   -   5        grdFinalPro_Qty1��$ Color��5   d    6{   �� *Color+$ TwoWay=�  5       $ Avilable Qty��6-   $ 75 6C   -   5        grdFinalPro_NFDate1��$ AvilableQty��5    l    6�   �� *AvilableQty+$ TwoWay=�  5!      $ Sale Qty��6-   $ 60 6?   -   5        grdFinalPro_Warranty1��$ SaleQty��5!   j    6�   �� *	SaleQty+$ TwoWay=�  5"      $ New Qty��6-   $ 60 6>   -   5        grdFinalPro_AddToSale1��$ NewQty��5"   j    6�   �� *NewQty+$ TwoWay=�  5#      $ Price��6-   $ 80 6<   -   5        grdFinalPro_FinalPrice��$ 
FinalPrice��5#   h    6�   �� *
FinalPrice+$ TwoWay=�5%      5&      5*      5+      5.      