//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004time.nss_MAIN
{

		md05_MoveCount();
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
//	$PreGameName = $GameName;

	if($md05_MoveCount >= 24){$GameName = "md05_004gameover.nss";}
	else{$GameName = $Next_GameName;}

}

scene md05_004time.nss
{



	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



if($md05_MoveCount == 12){

..//������ָ��
//ǰ�ե�����

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 1000, "blind_01_00_1", true);
	Wait(500);
	DrawDelete("�}ɫ�\", 1000, 1000, "blind_01_00_1", true);

//��������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���Ƅӥ�����ȣ�
//����������Ȥ�һ���������`�४�`�Щ`���ΰ�֣���
//���_�������ϡ����Υ��`����
//�������`�ȵص�
//�����y��


	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",1000,1000,null,true);

	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md05/004ti0010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������֮��һ�������¡���

����о������������ݵ�Σ�ա�
����һЩΪ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ��Ȥ�

..//������ָ��
//�Υե�����

}else if($md05_MoveCount == 18){//elseif_Start


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���Ƅӥ�����ȣ�
//����������Ȥ�һ���������`�४�`�Щ`���Σ���������
//���_�������ϡ����Υ��`����
//�������`�ȵص�
//�����y��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 1000, "blind_01_00_1", true);
	Wait(500);
	DrawDelete("�}ɫ�\", 1000, 1000, "blind_01_00_1", true);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",1000,1000,null,true);

	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������ɫ֮�գ��Ƚ���
���־��ܴ����ĸ߶ȡ�

����⡣
���Ͽ��ж��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ��Ȥ�

..//������ָ��
//�Υե�����
}else if($md05_MoveCount == 24){//elseif_Start


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���Ƅӥ�����ȣ�
//����������Ȥ����`�४�`�Щ`����
//�������`�ȵص�
//�����y�⡣���Τޤޑ��餺

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 1000, "blind_01_00_1", true);
	Wait(500);
	DrawDelete("�}ɫ�\", 1000, 1000, "blind_01_00_1", true);

	CreateSE("SE01","se����_냇��_�k��04");
	CreateColorEXadd("�ե�å����", 3000, "WHITE");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�ե�å����",2000,1000,null,true);

	SetVolume("@mbgm*", 2000, 0, null);

	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������ʱ��ľ���
���㱻����֮�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);


//������ʧ��


}//else_if_end


..//������ָ��
//�Υե����롡"md05_004gameover.nss"

	SetVolume("@mbgm*", 1000, 0, null);


}


