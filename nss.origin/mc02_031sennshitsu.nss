//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031sennshitsu.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

//�룺�ǥХå��ե饰
//	$����һ��Ŀ_Flag = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($����һ��Ŀ_Flag == true){
		call_scene @->mc02_031sennshitsu_s.nss;
		$sennshitsu_s=true;//���ҥե饰����
		$sennshitsu_No=false;//���ҥե饰�ʤ�
	}else{
		call_scene @->mc02_031sennshitsu_No.nss;
		$sennshitsu_s=false;//���ҥե饰����
		$sennshitsu_No=true;//���ҥե饰�ʤ�
	}

//�Υ��`��
	if($sennshitsu_No==true){
		$GameName = "mc02_031rouka1.nss";
	//�룺�ե饰���ڻ�
		$����һ��Ŀ_Flag = true;
		$sennshitsu_s=false;//���ҥե饰����
		$sennshitsu_No=false;//���ҥե饰�ʤ�
//�룺��������{��
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}else if($sennshitsu_s==true){
		$GameName = "mc02_031gameover.nss";
	//�룺�ե饰���ڻ�
		$sennshitsu_s=false;//���ҥե饰����
		$sennshitsu_No=false;//���ҥե饰�ʤ�
	}

}

scene mc02_031sennshitsu.nss
{

..//������ָ��
//ǰ�ե����롡"mc02_031rouka1.nss"

}

scene mc02_031sennshitsu_No.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//����
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg082_�w�д�����_01a.jpg");
	FadeDelete("�ϱ���", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

.//����һ��Ŀ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����о�����׼�����š���
��ǧ��һ��֮�ʣ���ȴ�����ˡ�

���ŵ���һ�ߣ��ܸо�����Ⱥ��������
�������������һ�´��幹�졪��<k>�ź󷽣�
�����ǿͲգ�

����������ĵط����ƺ��Ǵ���ĺ�
����
�������Һͺ��������ڵ��������򣬸����Ʋ�Ӧ��λ��
�����Ŵ��յĶ԰�����������ǰ����

������֮�������ͻ��������գ����޷�������Ҫ��
�ݵ㡣
����������̫³ç���������öԿ���������
�ľ���

�����б�Ҫ�����ò�����������֮Ӧ�������
�Դ���󲿵������ɡ�
����������ŵ��뿪�������š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�}ɫ�\", 5000, "#000000");
	DrawTransition("�}ɫ�\", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//���ե饰�{��
//��$����һ��Ŀ_Flag = true;


//���������£�

..//������ָ��
//�Υե����롡"mc02_031rouka1.nss"


}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������Ŀ
scene mc02_031sennshitsu_s.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


//�����_���롣�����㡣
//������һ��Ŀ_Flag���������
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg082_�w�д�����_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	CreateSE("SE01","se�ճ�_����_���_��01");
	MusicStart("SE01",0,500,0,1000,null,false);

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������������ˡ�
��
����������ʶ��������ʧ�ߣ���֮Ī����ʱ��
һ�ж�Ϊʱ����

���Ŷ����ǡ���ʿ���Ǵ����Ĵ��ա�
��
�����ǰ��ҵ����Ѿ�ʿ��Ц����ӭ�����ֿ�����
������

��һ��֮��𰸽�����
��Ȼ���ҵ����˾ʹ˾�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��С���

if($����֦����_Flag==false){

//������֦���ʤ��D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//������֦����_Flag���ʤ�����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������µ������ֻ�����һ���¡�
������������˲��߾�ȫ������ϣ���и��������ξ��
ֻ������ˡ�

�������ڶ���������Ŀ����ԡ�
�����¶������ľ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}else if($����֦����_Flag==true){

//������֦����D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//������֦����_Flag���������

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����衿
<voice name="����" class="����" src="voice/mc02/031se0010a04">
�����������ǰ������¡���

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031se0020a03">
������Ǻ�����˹��ѡ��ɣ�
����Ҳ���Ͼ������˵�һ�����磬
���Ǻܺ��𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������ҵ����Ӷ��ˣ��ƺ��ܿ�������˾���
��
������û�б������𱸣��Ҹе��ǳ����ܡ�

�������룬����Ҫ�����Ƕ������ѣ�֮����¾�ֻ��
�����������ˡ�
�����������ֱ�������Ľ�����Ϊ���Ǵ��Ŀ����
ȡ��Ҫ��ʱ�䡣

���Ѿ�����ѡ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}//if End

//�������D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(3000, 2000);


//�����񥲩`�४�`�Щ`
..//������ָ��
//�Υե����롡"mc02_031gameover.nss"


}

