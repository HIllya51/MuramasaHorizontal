//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyoku.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg080_�w�д�����Ab_01a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//�룺�ǥХå��ե饰
//	$�ʳ��һ��Ŀ_Flag = true;
//	$����֦����_Flag = true;
//	$Ş�L�Ʊ�Ҫ_Flag = true;
//	$��_Flag = true;
//	$Ş�L���E_Flag = true;
//$�L����kҊ_Flag=true;
//$�I_Flag=true;
//	$�޷�ľ_Flag=false;
//	$����_Flag=false;
//	$�����_Flag=false;
//	$�����ܥ��_Flag=false;


//�ʳ�Ҽ����L:if01
	if($�ʳ��һ��Ŀ_Flag==true){
//����֦�����g��:if02
		if($����֦����_Flag==true){
//Ş�L�Ʊ�Ҫ�_�J�g��:if03
			if($Ş�L�Ʊ�Ҫ_Flag==true){
//Ş�L�����E�g�ߴ_�J�g��:if04
				if($Ş�L���E_Flag==true){
//�I�֤äƤ��ʤ�+��_�J�g��:if05
					if($�L����kҊ_Flag==true&& !$�I_Flag){
						call_scene @->mc02_031innsyoku_ikkk.nss;
						$innsyoku_i = false;//�ʳ�Ҽ����L
						$innsyoku_ik = false;//����֦����
						$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
						$innsyoku_ikkk = true;//Ş�L���E
						$innsyoku_ikkkt = false;//��kҊ�g��
						$innsyoku_No = false;//�ե饰�ʤ�
					}else{
						call_scene @->mc02_031innsyoku_ikkk.nss;
						$innsyoku_i = false;//�ʳ�Ҽ����L
						$innsyoku_ik = false;//����֦����
						$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
						$innsyoku_ikkk = true;//Ş�L���E
						$innsyoku_ikkkt = false;//��kҊ�g��
						$innsyoku_No = false;//�ե饰�ʤ�
					}//if05 end
				}else{
					call_scene @->mc02_031innsyoku_ikk.nss;
					$innsyoku_i = false;//�ʳ�Ҽ����L
					$innsyoku_ik = false;//����֦����
					$innsyoku_ikk = true;//Ş�L���Ʊ�Ҫ
					$innsyoku_ikkk = false;//Ş�L���E
					$innsyoku_ikkkt = false;//��kҊ�g��
					$innsyoku_No = false;//�ե饰�ʤ�
				}//if04 end
			}else{
				call_scene @->mc02_031innsyoku_ik.nss;
				$innsyoku_i = false;//�ʳ�Ҽ����L
				$innsyoku_ik = true;//����֦����
				$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
				$innsyoku_ikkk = false;//Ş�L���E
				$innsyoku_ikkkt = false;//��kҊ�g��
				$innsyoku_No = false;//�ե饰�ʤ�
			}//if03 end
		}else{
			call_scene @->mc02_031innsyoku_i.nss;
			$innsyoku_i = true;//�ʳ�Ҽ����L
			$innsyoku_ik = false;//����֦����
			$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
			$innsyoku_ikkk = false;//Ş�L���E
			$innsyoku_ikkkt = false;//��kҊ�g��
			$innsyoku_No = false;//�ե饰�ʤ�
		}//if02 end
	}else{
		call_scene @->mc02_031innsyoku_No.nss;
		$innsyoku_i = false;//�ʳ�Ҽ����L
		$innsyoku_ik = false;//����֦����
		$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
		$innsyoku_ikkk = false;//Ş�L���E
		$innsyoku_ikkkt = false;//��kҊ�g��
		$innsyoku_No = true;//�ե饰�ʤ�
	}//if01 end



//�Υݥ���ȴ_�J��
	if($innsyoku_No){
		$SelectGameName="@->"+$GameName+"_SELECT01";
		call_scene $SelectGameName;
		$�ʳ��һ��Ŀ_Flag = true;
//�룺�ե饰���ڻ�
		$innsyoku_i = false;//�ʳ�Ҽ����L
		$innsyoku_ik = false;//����֦����
		$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
		$innsyoku_ikkk = false;//Ş�L���E
		$innsyoku_ikkkt = false;//��kҊ�g��
		$innsyoku_No = false;//�ե饰�ʤ�
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_i){

//=============================================================//
..//�룺�֤äƤ����δ_�J�á�Start
//=============================================================//

//�x�k֫�����ΛQ��
		$�x�k֫�������=0;
//�x�k֫����ǰ
		$�x�k֫��ǰ1 = "��";
		$�x�k֫��ǰ2 = "��";
		$�x�k֫��ǰ3 = "��";
		$�x�k֫��ǰ4 = "��";
		$�x�k֫��ǰ5 = "��";

//�x�k֫����ǰ
		$�x�k֫���1 = "��";
		$�x�k֫���2 = "��";
		$�x�k֫���3 = "��";
		$�x�k֫���4 = "��";
		$�x�k֫���5 = "��";


//�����������
		if($�޷�ľ_Flag==true){$�x�k֫�������=$�x�k֫�������+1;}
		if($����_Flag==true){$�x�k֫�������=$�x�k֫�������+1;}
		if($�����_Flag==true){$�x�k֫�������=$�x�k֫�������+1;}
		if($�����ܥ��_Flag==true){$�x�k֫�������=$�x�k֫�������+1;}

//�֤���_�J
		if($�޷�ľ_Flag==true){
			if($����_Flag==true){
				if($�����_Flag==true){
//�޷�ľ,����,�����,�����ܥ��
//�޷�ľ,����,�����
					if($�����ܥ��_Flag==true){$�x�k֫��ǰ1 = "����ĥ��";$�x�k֫��ǰ2 = "������";$�x�k֫��ǰ3 = "���Ͼ�";$�x�k֫��ǰ4 = "��Һ������";$�x�k֫��ǰ5 = "ʲô������";}
					else{$�x�k֫��ǰ1 = "����ĥ��";$�x�k֫��ǰ2 = "������";$�x�k֫��ǰ3 = "���Ͼ�";$�x�k֫��ǰ4 = "ʲô������";}
				}else{
//�޷�ľ,����,�����ܥ��
//�޷�ľ,����
					if($�����ܥ��_Flag==true){$�x�k֫��ǰ1 = "����ĥ��";$�x�k֫��ǰ2 = "������";$�x�k֫��ǰ3 = "��Һ������";$�x�k֫��ǰ4 = "ʲô������";}
					else{$�x�k֫��ǰ1 = "����ĥ��";$�x�k֫��ǰ2 = "������";$�x�k֫��ǰ3 = "ʲô������";}
				}
			}else{
				if($�����_Flag==true){
//�޷�ľ,�����,�����ܥ��
//�޷�ľ,�����
					if($�����ܥ��_Flag==true){$�x�k֫��ǰ1 = "����ĥ��";$�x�k֫��ǰ2 = "���Ͼ�";$�x�k֫��ǰ3 = "��Һ������";$�x�k֫��ǰ4 = "ʲô������";}
					else{$�x�k֫��ǰ1 = "����ĥ��";$�x�k֫��ǰ2 = "���Ͼ�";$�x�k֫��ǰ3 = "ʲô������";}
				}else{
//�޷�ľ,�����ܥ��
//�޷�ľ
					if($�����ܥ��_Flag==true){$�x�k֫��ǰ1 = "����ĥ��";$�x�k֫��ǰ2 = "��Һ������";$�x�k֫��ǰ3 = "ʲô������";}
					else{$�x�k֫��ǰ1 = "����ĥ��";$�x�k֫��ǰ2 = "ʲô������";}
				}
			}
		}else if($����_Flag==true){
			if($�����_Flag==true){
//����,�����,�����ܥ��
//����,�����
				if($�����ܥ��_Flag==true){$�x�k֫��ǰ1 = "������";$�x�k֫��ǰ2 = "���Ͼ�";$�x�k֫��ǰ3 = "��Һ������";$�x�k֫��ǰ4 = "ʲô������";}
				else{$�x�k֫��ǰ1 = "������";$�x�k֫��ǰ2 = "���Ͼ�";$�x�k֫��ǰ3 = "ʲô������";}
			}else{
//����,�����ܥ��
//����
				if($�����ܥ��_Flag==true){$�x�k֫��ǰ1 = "������";$�x�k֫��ǰ2 = "��Һ������";$�x�k֫��ǰ3 = "ʲô������";}
				else{$�x�k֫��ǰ1 = "������";$�x�k֫��ǰ2 = "ʲô������";}
			}
		}else if($�����_Flag==true){
//�����,�����ܥ��
//�����
			if($�����ܥ��_Flag==true){$�x�k֫��ǰ1 = "���Ͼ�";$�x�k֫��ǰ2 = "��Һ������";$�x�k֫��ǰ3 = "ʲô������";}
			else{$�x�k֫��ǰ1 = "���Ͼ�";$�x�k֫��ǰ2 = "ʲô������";}
		}else{
//�����ܥ��
			if($�����ܥ��_Flag==true){$�x�k֫��ǰ1 = "��Һ������";$�x�k֫��ǰ2 = "ʲô������";}
		}


//�x�k֫�Ȥδ_��
	if($�x�k֫��ǰ1=="����ĥ��"){$�x�k֫���1="mc02_031innsyokua.nss";}
	else if($�x�k֫��ǰ1=="������"){$�x�k֫���1="mc02_031innsyokub.nss";}
	else if($�x�k֫��ǰ1=="���Ͼ�"){$�x�k֫���1="mc02_031innsyokuc.nss";}
	else if($�x�k֫��ǰ1=="��Һ������"){$�x�k֫���1="mc02_031innsyokud.nss";}
	else{}

	if($�x�k֫��ǰ2=="����ĥ��"){$�x�k֫���2="mc02_031innsyokua.nss";}
	else if($�x�k֫��ǰ2=="������"){$�x�k֫���2="mc02_031innsyokub.nss";}
	else if($�x�k֫��ǰ2=="���Ͼ�"){$�x�k֫���2="mc02_031innsyokuc.nss";}
	else if($�x�k֫��ǰ2=="��Һ������"){$�x�k֫���2="mc02_031innsyokud.nss";}
	else{$�x�k֫���2="mc02_031innsyokuz.nss";}

	if($�x�k֫��ǰ3=="����ĥ��"){$�x�k֫���3="mc02_031innsyokua.nss";}
	else if($�x�k֫��ǰ3=="������"){$�x�k֫���3="mc02_031innsyokub.nss";}
	else if($�x�k֫��ǰ3=="���Ͼ�"){$�x�k֫���3="mc02_031innsyokuc.nss";}
	else if($�x�k֫��ǰ3=="��Һ������"){$�x�k֫���3="mc02_031innsyokud.nss";}
	else{$�x�k֫���3="mc02_031innsyokuz.nss";}

	if($�x�k֫��ǰ4=="����ĥ��"){$�x�k֫���4="mc02_031innsyokua.nss";}
	else if($�x�k֫��ǰ4=="������"){$�x�k֫���4="mc02_031innsyokub.nss";}
	else if($�x�k֫��ǰ4=="���Ͼ�"){$�x�k֫���4="mc02_031innsyokuc.nss";}
	else if($�x�k֫��ǰ4=="��Һ������"){$�x�k֫���4="mc02_031innsyokud.nss";}
	else{$�x�k֫���4="mc02_031innsyokuz.nss";}

	if($�x�k֫��ǰ5=="����ĥ��"){$�x�k֫���5="mc02_031innsyokua.nss";}
	else if($�x�k֫��ǰ5=="������"){$�x�k֫���5="mc02_031innsyokub.nss";}
	else if($�x�k֫��ǰ5=="���Ͼ�"){$�x�k֫���5="mc02_031innsyokuc.nss";}
	else if($�x�k֫��ǰ5=="��Һ������"){$�x�k֫���5="mc02_031innsyokud.nss";}
	else{$�x�k֫���5="mc02_031innsyokuz.nss";}


//�룺�⤷������Ȥ�������ä����ϤϏ��ƵĤ˺Τ�ɤ��ʤ�
		if($�x�k֫�������==1){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else if($�x�k֫�������==2){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else if($�x�k֫�������==3){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else if($�x�k֫�������==4){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else{$GameName = "mc02_031innsyokuz.nss";}
//�룺�ե饰���ڻ�
		$innsyoku_i = false;//�ʳ�Ҽ����L
		$innsyoku_ik = false;//����֦����
		$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
		$innsyoku_ikkk = false;//Ş�L���E
		$innsyoku_ikkkt = false;//��kҊ�g��
		$innsyoku_No = false;//�ե饰�ʤ�
//=============================================================//
..//�룺�֤äƤ����δ_�J�á�End
//=============================================================//

	}else if($innsyoku_ik){
		$SelectGameName="@->"+$GameName+"_SELECT03";
		call_scene $SelectGameName;
		$Ş�L�Ʊ�Ҫ_Flag = true;
//�룺�ե饰���ڻ�
		$innsyoku_i = false;//�ʳ�Ҽ����L
		$innsyoku_ik = false;//����֦����
		$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
		$innsyoku_ikkk = false;//Ş�L���E
		$innsyoku_ikkkt = false;//��kҊ�g��
		$innsyoku_No = false;//�ե饰�ʤ�
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_ikk){
		$SelectGameName="@->"+$GameName+"_SELECT04";
		call_scene $SelectGameName;
..//�룺Ҫ�{��
//�룺�ե饰���ڻ�
		if($��_Flag==true){$Ş�L���E_Flag=true;$��_Flag=false;}
		$innsyoku_i = false;//�ʳ�Ҽ����L
		$innsyoku_ik = false;//����֦����
		$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
		$innsyoku_ikkk = false;//Ş�L���E
		$innsyoku_ikkkt = false;//��kҊ�g��
		$innsyoku_No = false;//�ե饰�ʤ�
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_ikkk){
		$SelectGameName="@->"+$GameName+"_SELECT05";
		call_scene $SelectGameName;
		if($�L����kҊ_Flag==true && $�I_Flag==false){$�I_Flag = true;}
//�룺�ե饰���ڻ�
		$innsyoku_i = false;//�ʳ�Ҽ����L
		$innsyoku_ik = false;//����֦����
		$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
		$innsyoku_ikkk = false;//Ş�L���E
		$innsyoku_ikkkt = false;//��kҊ�g��
		$innsyoku_No = false;//�ե饰�ʤ�
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_ikkkt){
		$SelectGameName="@->"+$GameName+"_SELECT06";
		call_scene $SelectGameName;
//�룺�ե饰���ڻ�
		$innsyoku_i = false;//�ʳ�Ҽ����L
		$innsyoku_ik = false;//����֦����
		$innsyoku_ikk = false;//Ş�L���Ʊ�Ҫ
		$innsyoku_ikkk = false;//Ş�L���E
		$innsyoku_ikkkt = false;//��kҊ�g��
		$innsyoku_No = false;//�ե饰�ʤ�
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

.//mc02_031innsyoku.nss
scene mc02_031innsyoku.nss
{

..//������ָ��
//ǰ�ե����롡"mc02_031rouka3.nss"
//ǰ�ե����롡"mc02_031daidokoroz.nss"
//���ʳ��
//���L�����������֥����ƥ�ե饰�ˤ�ä�ɫ�����

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������
.//mc02_031innsyoku_No.nss
scene mc02_031innsyoku_No.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se�ճ�_����_���_��01", 1000);
	WaitKey(500);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������Χ�����ӡ�
�������ʳ�û��ǻỰ��ľ��󡭡�

���Ұ�ע�������е��������������ˡ�
���������ľ��������˾��ġ���<k>�����Ȼ�ǵз�֮�أ�
����б����������Ǳ�Ȼ���ڵģ�

�������ڳ����ƣ���������Ϯ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mc02/031in0010a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031in0020a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������û�а�ǹҲû��Ҫ����ͬ��ļ���
�����ұ���Ҳû�����ҡ�

��׼ȷ��˵�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���ܥ���������������`���ߩ`����
//��������
<voice name="����" class="����" src="voice/mc02/031in0030a00">
����������ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����¶���������������Ȼһ������ģ����
��һ�ߺ������۾ƣ�һ�߸¸µػ���ʲô��

�����ٿ죬�ټ��Ͽڳݲ��壬���ҵ�Ӣ��ˮƽ��һ��
������Ҳ�޷���⡣
�������������ˣ���������Ҫ����Щʲô��������

����֮��ֻ�ܷ��Ų��ܡ�
����Ȼ������Ϊ�ο�ũ�����ľ�����ս�л����������ˣ�
�����ڻ��ǽ��ܲ���ս�����ܽ�������˰ɡ�

��������ȥ����ͷ�������š�
���ǵ��Ǳ�ȥ��������·��ȥ�أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե饰�{��
//��$�ʳ��һ��Ŀ_Flag = true;

//���x�k�����׷������أ�ͨ·�ˑ���
//�������̨��
//��ͨ·�������£�

..//������ָ��
//�������̨����"mc02_031daidokoro.nss"
//��ͨ·�������£���"mc02_031rouka3.nss"

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������Ŀ�Խ�
//���ʳ��һ��Ŀ_Flag���������
.//mc02_031innsyoku_i.nss
scene mc02_031innsyoku_i.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se�ճ�_����_���_��01", 1000);
	WaitKey(500);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������ڳ��¡�
����������˵ʲô����������˵���޷����ġ�

�����ŵݸ���ʲô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����֥����ƥ���x�k֫�Τ߳��F����
//���޷�ľ_Flag������_Flag�������_Flag�������ܥ��_Flag�Ό��ꤷ���x�k֫���ʾ

//���x�k������ĥ���������棯���Ͼƣ���Һ�����ޣ�ʲô������

..//������ָ��
//������ĥ����"mc02_031innsyokua.nss"
//�������桡"mc02_031innsyokub.nss"
//�����Ͼơ�"mc02_031innsyokuc.nss"
//����Һ�����ޡ�"mc02_031innsyokud.nss"
//���Τ�ɤ��ʤ���"mc02_031innsyokuz.nss"


}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//mc02_031innsyoku_ik.nss
.//��������֦���롤����
//������֦����_Flag���������
scene mc02_031innsyoku_ik.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se�ճ�_����_���_��01", 1000);
	WaitKey(500);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������������¡�
����������˵ʲô����������˵��ȫ�޷��������ͼ��

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031in0040a03">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031in0050a00">
����ξ���£���˵ʲô����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031in0060a03">
����
��������λ�Ƿ��н�ԭ���Ľ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��������
�����������Ϊʲô�������Ҫ����ս���뿪���ţ�
���������ֵط�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031in0070a03">
�������Կ�ũ����Ϊ��ս��Ҫ��
�����մ�ֻ�ľٶ���
��Ȼǿ�е���ս�����������û�ܲ�����ս��
��û�취��ֻ������������߶߶��˵���ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031in0080a00">
������Ŷ��ԭ����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031in0090a04">
����ũ��������Ҳ̫�����ˡ�
�����н��Ĵ����Դ����Ȱ���
�뺣�ϵ�ͬҵ�߲��ಮ�ٰ�����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031in0100a03">
��ȷʵ�ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031in0110a00">
���������ĽǶ���˵��Ϊ���������Ĵ�ʩ
������Ȼ��
���������ǣ�����Ҫ��ʲô������

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031in0120a03">
���Ǿơ�
��������ô�͵�������ˣ��ñ�����
���������������ô˵�ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031in0130a00">
��������

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031in0140a04">
��������˵���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��û�취��
����������Ҳ������������š�

����˵���Կ�ũ�������д˴���ս���в�����
������£����Э�����ǡ���������������ӿ�
���ǲ��еġ�
������֦С����Ӣ���������ƺ�Ҳû������

���߰ɡ�
��Ҫô�򿪴�ͷ������ţ�Ҫô���Ҳ���Żص����ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե饰�{��
//��$Ş�L�Ʊ�Ҫ_Flag = true;


//���x�k�����׷������أ����¤ˑ���
//���ס���̨��
//�����¡������£�


..//������ָ��
//���ס���̨����"mc02_031daidokoro.nss"
//�����¡������£���"mc02_031rouka3.nss"

}

.//mc02_031innsyoku_ikk.nss
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������֦���롤����Ŀ�Խ�
//��Ş�L�Ʊ�Ҫ_Flag���������
scene mc02_031innsyoku_ikk.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se�ճ�_����_���_��01", 1000);
	WaitKey(500);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����н�ԭ���Ľ�����һ�߶��Կ���һ�������š�
���ƺ�����Ҫ�ơ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ф�Έ��ϤΤ����¥��`��D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//���ƥե饰
//$��_Flag = true

..//�룺if�İk��
	if($��_Flag==true){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����ţ���ʿ�����õĶ����Ӿơ�
�����Լ�����Ҳû�ã����Ǳ�ݸ�������

��ֻ����һ�ۣ���֪��ƿ����װ����ʲô�˰ɡ�
������ȸԾ�ؽ��������˹������ο����ӣ�
���˹��˵غ���������
���������󹤷�һƿ�ҾƱ�ȫû�ˡ�

{	CreateSE("SE01","se����_����_����02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
���Ѿƺȹ��ͬʱ�����ᵹ�ڵء�
��ʮ�����ش����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mc02/031in0150a00">
������������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031in0160a03">
������һ�ƣ���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031in0170a04">
��ȷʵ��ˡ�
����������������������»�����ݰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ȷ��
��
�����������Ҹ����������Σ�Ȼ�����ǵ�����ƺ�
Ҳûʲô��ת��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����L���E�ե饰��
//���ե饰�{��
//��$Ş�L���E_Flag = true;

//�������ޤǨD�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}


//���Ɵo���ʤ�ֱͨ�Ǥ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���߰ɡ�
��Ҫô�򿪴�ͷ������ţ�Ҫô���Ҳ���Żص����ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x�k�����׷������أ����¤ˑ���
//���ס���̨��
//�����¡������£�


..//������ָ��
//���ס���̨����"mc02_031daidokoro.nss"
//�����¡������£���"mc02_031rouka3.nss"

}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//�������L�˥����ޤ��g
//��Ş�L���E_Flag���������
..//mc02_031innsyoku_ikkk.nss
scene mc02_031innsyoku_ikkk.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se�ճ�_����_���_��01", 1000);
	WaitKey(500);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����������Ľ��������˯���ˡ�
��������Ҳ�����ڸ�л���ǣ������ڵ�״̬��ȫ�޷�
��ʾ����л��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���L�����kҊ�g���I����ǰ�Έ��ϤΤ����¥��`��D�D�D�D�D
//���L����kҊ_Flag�����ꡢ�����I_Flag���o������


..//�룺if�İk��
if($�L����kҊ_Flag==true && $�I_Flag==false){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���������ԡ����š�
�������Ķ϶�̫�����ʡ�

����������ս���Ľ�����
����ô���ѵ�����

{
	OnSE("se����_����_���濫����01", 1000);
}
���ҷ��˷������·���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031in0180a03">
�������������ˡ�
�����룬������
����ʵ���Ƿ������Ȥ�𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031in0190a04">
�����к��ġ�
�����Ǵ�С�㣬�Ǵ��ֻ��˳����ѣ�
�ƺ�����Ŀ�ġ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031in0200a03">
����������ԭ������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���Ա����������ƺ�Ҳ����ˡ�
�����������ƺ���Ȼ��һЩ΢�����ᡣ����
���ǲ�Ҫ������Щ���ˡ�

��֮�󣬲��á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mc02/031in0210a00">
���������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����ó��ҵ��Ķ�����
��
����������СС��Կ�ס�

����С���ڲt��̨�����ξ�ҵ����ŵ��������ú��ʡ�
�����Կ���Ƿ���ȷ��Ҫ�Թ���֪������
���ٿ��������еġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031in0220a03">
���ǣϣϣġ��ʣϣ£���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031in0230a04">
���ɵúð����ն����ˡ�
����Ϊ���ͣ�������ɡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031in0240a00">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���I����
//���ե饰�{��
//��$�I_Flag = true;

//�������ޤǨD�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���߰ɡ�
��Ҫ�򿪴�ͷ������ţ����Ǵ��Ҳ���Żص����ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����׷������أ����¤ˑ���
//���ס���̨��
//�����¡������£�

..//������ָ��
//���ס���̨����"mc02_031daidokoro.nss"
//�����¡������£���"mc02_031rouka3.nss"

}



//���x�k֫���`��
.//SELECT01(No)
scene mc02_031innsyoku.nss_SELECT01
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_�w�д�����Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	mc02_SelectIcon(7);

//���x�k֫
	SetChoice02("����ͷ�������","�ص�����");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
			mc02_SelectIcon_Delete();
//�������̨����"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//��ͨ·�������£���"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}


//���x�k֫���`��
.//SELECT03(ik)
scene mc02_031innsyoku.nss_SELECT03
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_�w�д�����Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	mc02_SelectIcon(7);

//���x�k֫
	SetChoice02("����ͷ�������","�ص�����");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
			mc02_SelectIcon_Delete();
//���ס���̨����"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//�����¡������£���"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}

//���x�k֫���`��
.//SELECT04(ikk)
scene mc02_031innsyoku.nss_SELECT04
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_�w�д�����Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	mc02_SelectIcon(7);

//���x�k֫
	SetChoice02("����ͷ�������","�ص�����");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
			mc02_SelectIcon_Delete();
//���ס���̨����"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//�����¡������£���"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}


.//SELECT05(ikkk)
//���x�k֫���`��
scene mc02_031innsyoku.nss_SELECT05
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_�w�д�����Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	mc02_SelectIcon(7);

//���x�k֫
	SetChoice02("����ͷ�������","�ص�����");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
			mc02_SelectIcon_Delete();
//���ס���̨����"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//�����¡������£���"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}



//���x�k֫���`��
.//SELECT06(ikkkt)
scene mc02_031innsyoku.nss_SELECT06
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_�w�д�����Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	mc02_SelectIcon(7);

//���x�k֫
	SetChoice02("����ͷ�������","�ص�����");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
			mc02_SelectIcon_Delete();
//���ס���̨����"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//�����¡������£���"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}


//���x�k֫���`��
.//SELECT02ex(i)
scene mc02_031innsyoku.nss_SELECT02ex
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_�w�д�����Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

//	SetChoice02("����ͷ�������","�ص�����");
//�x�k֫���
//���x�k֫
	if($�x�k֫�������==1){SetChoice02($�x�k֫��ǰ1,$�x�k֫��ǰ2);}
	else if($�x�k֫�������==2){SetChoice03($�x�k֫��ǰ1,$�x�k֫��ǰ2,$�x�k֫��ǰ3);}
	else if($�x�k֫�������==3){SetChoice04($�x�k֫��ǰ1,$�x�k֫��ǰ2,$�x�k֫��ǰ3,$�x�k֫��ǰ4);}
	else if($�x�k֫�������==4){SetChoice05($�x�k֫��ǰ1,$�x�k֫��ǰ2,$�x�k֫��ǰ3,$�x�k֫��ǰ4,$�x�k֫��ǰ5);}
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
		if($�x�k֫�������==1){
			case @�x�k֫��{ChoiceA02();$GameName = $�x�k֫���1;}
			case @�x�k֫��{ChoiceB02();$GameName = $�x�k֫���2;}
		}else if($�x�k֫�������==2){
			case @�x�k֫��{ChoiceA03();$GameName = $�x�k֫���1;}
			case @�x�k֫��{ChoiceB03();$GameName = $�x�k֫���2;}
			case @�x�k֫��{ChoiceC03();$GameName = $�x�k֫���3;}
		}else if($�x�k֫�������==3){
			case @�x�k֫��{ChoiceA04();$GameName = $�x�k֫���1;}
			case @�x�k֫��{ChoiceB04();$GameName = $�x�k֫���2;}
			case @�x�k֫��{ChoiceC04();$GameName = $�x�k֫���3;}
			case @�x�k֫��{ChoiceD04();$GameName = $�x�k֫���4;}
		}else if($�x�k֫�������==4){
			case @�x�k֫��{ChoiceA05();$GameName = $�x�k֫���1;}
			case @�x�k֫��{ChoiceB05();$GameName = $�x�k֫���2;}
			case @�x�k֫��{ChoiceC05();$GameName = $�x�k֫���3;}
			case @�x�k֫��{ChoiceD05();$GameName = $�x�k֫���4;}
			case @�x�k֫��{ChoiceE05();$GameName = $�x�k֫���5;}
		}
	}//Select_End

}


