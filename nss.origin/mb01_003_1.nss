//<continuation number="1640">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003_1.nss_MAIN
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
	#ev168_��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
//	$PreGameName = $GameName;

//	���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
//	������֦�����椷�Ƥ������ϡ�"mb01_003a.nss"
//	������֦���������Ƥ������ϡ�"mb01_003b.nss"
//	$GameName = "mb01_003b.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;


if($PreGameName == "mc01_004.nss"){
	$PreGameName = $GameName;
	$GameName = "mc01_005.nss";
}else{
		$PreGameName = $GameName;
		$GameName = "mb01_003_2.nss";
}



}

scene mb01_003_1.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb01_002.nss"
//ǰ�ե����롡"mb01_002a.nss"

//����֦��`�Ȥ��
//ǰ�ե����롡"mc01_004.nss"


.//��Ӣ�۾����ȡ���׉��"mc01_005.nss"���Ǥι��Х��ꥢ������������
//�����`��Ƿ֤��ơ�����

//���ãǣ�������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ţ�", 1000, Center, Middle, "cg/ev/ev168_��.jpg");
	Delete("�ϱ���");
	CreateSE("SE01","se�ճ�_��_�����ä�");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 500, true);
	SoundPlay("@mbgm24",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
��������������������Ԫ˧ް�š�

��������ʱ��Ļ������ڷ���������λ����������
�����ϵ���ް�ŵĹ��档��

������ް��ʱ�估����ȣ�һ��δ��˵����
������֪Ԥ���ɻ��ϵ��µĵ������ɰ��ϵ��½�������
�ֳ���������Ϊ�������񡣡�

�����ڻ��������еĸ�����˵��硣����義����ı����
��פ�����л���Բ��൳����ȵȣ�һʱ��ҥ������
�ҷ׷ײ����Ƿ����ϴη�ΰ�����������ᦹ��йء���

��Ȼ���ִ��Ծ�����ʵ���ݣ������ܲ���ѡ���

���ݿɿ���Ϣ�ƣ��������һ�����念������һ����
ӹ���ɡ�������Ϣ��ʵ����ô��ɴ���ް�ŵ�ԭ��Ӧ
����Ϊ���ǲ�������

�����ӵ��˹���Ľ�פ����˾��ڡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 1000);

..//������ָ��
//һ����`�ȷ��
//�Υե����롡"mb01_003_2.nss"

//����֦��`�ȷ��
//�Υե����롡"mc01_005.nss"


}



