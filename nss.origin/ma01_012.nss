//<continuation number="0">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_012.nss_MAIN
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
	#bg002_��a_03=true;
	#bg013_�`�}���a_03=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_013.nss";

}

scene ma01_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_011.nss"

//���Σ�������֩���������Ĥ�����ʤ�

//��ܞ�Q

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����20", 10020, Center, Middle, "cg/bg/bg002_��a_03.jpg");


	CreateSE("SE01","se��Ȼ_�L_Ұԭ01_L");
	MusicStart("SE01",3000,1000,0,1000,null,true);

	FadeDelete("�ϱ���", 2000, true);

	SoundPlay("@mbgm09",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������Ƕ��ˡ�
�����ն������������š�

��֩�롣

��ͷ��������������լǽ���ϣ������¶ȵ�
����Ŀ���Ŷ��˵ı�Ӱ��
��֩�롣Ȼ����ȴ����ͨ��֩�롣

����Լ�������߳ߡ�
�����Ի������೤�ȵĽ��㡣
������������о�Ͱ��С��

������ë���Ȼ�ľ޴�������
��
����ɫ��졣

������Ҫ�罦��������Ѫ��ɫ��
����ҹɫ������£���Ϊ����ѪҺ�İ��졣

���������������˸����ı��䣬��˸��Ӳ�ʹ�ԡ�
��
��������
���������Ǹ����ɡ�

����ɫ������֩�롣
����Ӧֻ�����ڲ廭С˵�е����Ρ�


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg013_�`�}���a_03.jpg");
	FadeDelete("�}����20", 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������գ���ĸ����£�����ѧ�����н�Զ��

��֩�����������塣

������Ҫ׷�϶�����
��������Ҫ��Щ������ʲô�ء�
��
������Ϊ�˲�ʳӬ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������Ȼ����
��ȴ��ʲô�ȷ����ˡ�

���������졣
��Ψ��ն�Ϸ����Ϣ��

��֩��Ķ���ֹͣ��
�����Ʈ��������ƶ��˷���

������һ�����լ�ݶ�֮�ϡ�
�����������һ��Ӱ�ӡ�

���˵���ò��
��ȴ�����˵���̬��
��
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������ס�
����ͭɫ�����ס�

����������ͨ���ף��������ڻ�Ϊһ����˲��
���֡�
����ȫ�����������Ծ���̶�����ŵء���ˣ�
��Ȼ�����������ס�

���ǽ��С�
�������ߡ�

����ͭ�����ߡ�

������ҡ����Ŀ������ע���Ŷ��˵ı�Ӱ�����
����֩�롣
������û�б�ʾ��һ˿���⡣

�����ӵ�֩������ͬ����
������������ʾ����ķ������������ˡ�

�����ŵ�ʱ���Լ���롣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 0, 0, null);
	SetVolume("OnSE*", 0, 0, null);
	OnSE("se����_����_���S01",1000);

	CreateTextureSP("�}�ţ�100", 10000, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");
	DrawTransition("�}�ţ�100", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("�}����*");
	CreateTextureSP("�}����20", 20, Center, Middle, "cg/bg/bg002_��a_03.jpg");

	DrawDelete("�}�ţ�*", 200, 1000, "slide_01_03_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����߳���ݶ���

�����˵����Խ��յ��ٶ���ͬ���磬��ͬʱ
�γ����������ͬ�����硣
�������޷����ѵ��׻�

�����ǣ�֩��Ķ��������׻�Ҳ����ѷɫ��

�����ľ޴������ݵ�һ����Я����ӯ�ķ繲�衣
������֮���������ģ�Ҳֻ���������Ѱɡ�

��֩��������ˣ���������ľ֮�ϡ�
���·����Ҷ���������棬��������̬���ǻ�����

��Ȼ���������Ƿݻ��������˷·�����ħ�硣
��ӭ���Ÿ����������ľ��ȴ��һ��С��֦�۶ϵ�����
��δ����

������Ҳ������ˡ�
����������һ����ʧ������׾ٵ���½��<RUBY text="����">��ֱ</RUBY>
ǽ�棬�ٴ�����ѻ�֩�롣

��֩�����ܡ�
������Σ��ֲ�ֻ�����ܡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������鹥��
	PrintGO("�ϱ���", 15000);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	CreateTextureSP("�}�ţ�100", 100, Center, Middle, "cg/ef/ef018_֩�����.jpg");
	SetBlur("�}�ţ�100", true, 3, 500, 100, false);
	Zoom("�}�ţ�100", 0, 1800, 1800, null, true);

	CreateSE("SE01","se����_����_֩������¤�01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeDelete("�ϱ���", 200, true);

	FadeDelete("�}�ե�", 200, false);
	Zoom("�}�ţ�100", 400, 1000, 1000, DxlAuto, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������ҹ�磬�³�����˿�ߡ�

��������Ͷ����
��˲ʱ��ų����͵���������׼Ŀ�ꡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_�n��_�zܞ��01",1000);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 200, 1000, null, true);

	WaitKey(400);

	Delete("�}�ţ�*");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg013_�`�}���a_03.jpg");

	FadeDelete("�}�ե�", 600, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0061]
�������ѷ������С�
����������Ӧ�Ŀ�϶��û�аɡ�����֮��
��׽ס���ߣ��������С�

�����������Ĺ⾰�ڴ����֡�

����լ����լ֮�䣬�ſ�˿�ߵĸ���֮Ӽ��
����������Ŀ����һ���������վ�����
����ʲô�Ŀ־��ս�������ɡ�

���������ʲôҲ���������
������ȥ�·��Ӽ��ȴ�Ǽ��Ρ�
������Ϊ�˷�������Ϊ�˷���Ĵ����

�����������ظ���˿�߶��ɵĺ���������
���ڴ����������ˣ�������Ҫ�����������²���
�õ���ˡ���ط�����ء�

��ʮ�ꡣ���ꡣ����ǧ�ꡪ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
	CreateColorSPadd("�}�ե�", 15000, "#FFFFFF");
	CreateColorSP("�}��ܞ", 1000, "#000000");

	Fade("�}�ե�", 200, 0, null, true);

	CreateSE("SE01","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,1700,null,false);

	SL_down(@0,@0,2000);
	SL_downfade2(10);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����һ˿��Ϣ�Ŀ�϶������Ҫ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W����
	CreateSE("SE02","se���L_����_Ұ̫�����01");
	MusicStart("SE02",0,1000,0,1250,null,false);
	SL_rightup(@0,@0,2000);
	SL_rightupfade2(10);

	CreateSE("SE03","se���L_����_Ұ̫�����01");
	MusicStart("SE03",0,1000,0,2000,null,false);
	SL_left(@0,@0,2000);
	SL_leftfade2(10);

	OnSE("se����_�z_װ��03",1000);
	Fade("�}�ե�", 200, 1000, null, true);
	Wait(300);
	Delete("�}��ܞ*");

	FadeDelete("�}�ե�", 600, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���׹⼲�ߡ�
���������ԡ�

���Ӽ��ڲ���������⣬��գ�۵�˲���п�������ʵ
�ĸ��ߣ������Ϊ��м��
����������������սᡣ

{	CreateSE("SE11","se��Ȼ_�L_Ұԭ01_L");
	MusicStart("SE11",2000,1000,0,700,null,true);}
����������˵�ż򵥵�������
��
������û����������ǿ�ߵ�������

�����ߵĽ�������֩������֮�ϡ�
�������˿�ߣ�������˵Ҳ������ССϷ����

��������Ȼ������

�����߲���ս��֮����
�����ۺ��ˣ�������ǰΨ�б�����ϥ��

���ܴ����ߵ�Ψ�У�
��������ǿ�����ߡ�

�����������������ɡ�

��������ɵ����߶������ܡ�
��������ȴδ��׽���κζ�����

���³�˿�ߣ�֩����֮زز��
�������ۼ������ξ޳治֪��ʧ�ںη���

��������ת��
��֩������߹�ͬ���ϵĶ�����Ӱ������Ӱ�١�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
<voice name="⏴�" class="⏴�" src="voice/ma01/0210580b57">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����˼����ʲô�ɡ�
�����ߣ�ʲôҲû��˼����

�����̵�ʱ�����¶���˳�˼�����顣

�������ٴ�ת������ҹɫ֮�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000,3000);

}

..//������ָ��
//�Υե����롡"ma01_013.nss"



