
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_020vsbb.nss_MAIN
{

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	//���ե饰��᪣������
	if($mc03_018vsb_R2Flag=="��"){$GameName = "mc03_020vsbba.nss";}
	else{$GameName = "mc03_020vsbbb.nss";}


}

scene mc03_020vsbb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc03_020vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//������󡸥ǥХå����ݳ��_�J�á�
	//$mc03_018vsb_R2Flag="�|";
	//$mc03_018vsb_R2Flag="��";
	//$mc03_018vsb_R2Flag="��";
	//$mc03_018vsb_R2Flag="��";

//���x�ѳɹ�
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	CreateSE("SE01","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1100,null,false);

	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_��xb.png");
	Move("�}�����}", 0, @316, @-10, null, true);
	Shake("�}�����}", 600000, 2, 0, 0, 0, 1000, null, false);

	Request("�}�����}", Smoothing);
	Rotate("�}�����}", 0, @0, @0, @-20, null,true);

	Move("�}�����}", 6000, @-60, @10, DxlAuto, false);
	Move("�}�ݱ���", 600000, -100, @0, null, false);

	Wait(200);

	SetFrequency("SE01", 400, 600, null);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

//�������Ǥ��Ϥʤ顢�ޤ����¶���
//��$�x��_Flag���������

if($mc03_018vsb_R2Flag=="��"){

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������Ϸ���
���г��¹ʵ��ֳ��ڱ���������Ҫ���ϡ�

�����������׷����
����ôֻҪ���ϣ����ܰѵ�������������ӣ�����һ��
���á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}else{
}//else_end

//����������ʤ餳������
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������<RUBY text="Wing">����װ��</RUBY>�˷缲��������С�
��������<RUBY text="�Ƚ�">��������</RUBY>û�����⡣
�����ܹ��͵����������롣

��������ʱ���õ����ܵ������ˡ�
��������֮���ܲ����ӵ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearFadeAll(500, true);


//���ե饰���
//�����Ǥ������񷽽�����
//�����Ǥ���������񷽽ǥߥ�

..//������ָ��
//��$�x��_Flag���������
//�Υե����롡"mc03_020vsbba.nss"

//��$�x��_Flag���o������
//�Υե����롡"mc03_020vsbbb.nss"

}