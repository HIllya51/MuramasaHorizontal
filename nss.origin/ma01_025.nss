//<continuation number="500">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_025.nss_MAIN
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
	#bg006_���w�β���_03b=true;
	#bg007_��m��·a_03=true;

	#ev106_���w��Ҋ�¤�����_a=true;
	#ev106_���w��Ҋ�¤�����_b=true;
	#ev106_���w��Ҋ�¤�����_c=true;
	#ev106_���w��Ҋ�¤�����_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_026.nss";

}

scene ma01_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 28 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_024.nss"



//�����w�β���
	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg006_���w�β���_03b.jpg");

	FadeDelete("�ϱ���", 1000,true);

	SoundPlay("@mbgm30",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ɵ��������������컨�塣
�����ʲôҲ��������
����������˯�ߡ�

�������Ĵ�������ͥԺ�еķ磬��Ȼ�Ѿ���Щ
���⣬���ǲ������������š�������Щ��ˬ��
��Ȼ��ȴ�޷����ߡ�

������Ҳ���ǲ���������������һֻ�Ŵ��ڸ���״̬��
������Ҳ���鷳����Ȼ��ʹ�����Ѿ���ʧ��������Ȼ
���Ծ�ֹ����Ϊǰ�����ǿ�����ġ�û������������
��ݰ�����

���ܽ����������ǳ��������������������
����ס���̵��������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250010b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����֮��
�������Ǵն��������ŵġ�����ܿ�ϵ������Ǳ�����
������

��������Ȼ�Ǳ�ֱ��ҽԺ��

���ҽ��ܵ�������ֹѪ�ͷ�ϣ��ٷ�����ʹ��֮�����
���ˡ����������˵�Ȼ������ˡ�
����Ȼû��̽��������˵���͵��˼��������ҡ�

�����ƣ�����Ҳ��������ɡ�
����ȻҲ��ֹ��������������������ڳ��������˶���
���ظ��һ�ȥ˯��������ֻ�ö��������ͷ��

�����²����ɲ����κ��ó������п��ܰ��£���������
��Ҳ��֪����������ֻ����ˡ�
����ǡ�������尢�̻����ұ��ļ��˸ϵ�ʱ�뿪������
�������ó��ͻ��˼ҡ�

���������ھ�������������������ҹ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250020b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��Ҫ�������ܶࡣ
�����尢�̣������ұ��ļ��ˣ����������׿�˵������
�����ɡ���ʹ�Ѿ�������˵���������ˣ�����ҲҪ���ҵ�
�鰸���ء�

����ҽԺʱû���������κ����顣�������ڹ����ҵĸ�
�ܣ���Ҳ����һֱ��ˡ�
����Ϊ��������ӽ�ƽ�����µ��ˣ�����Ӧ�н���˵��
������

������׼ȷ�ذѿ���������;�����������ǡ���ʹ��
����������ʹ�ࡣ
��Ҫ��ǰ׼���ò��С���Ϊ�Ҳ����ó�����˵����

����������ȥ������黹�в��١���֮�ȴ�������緹
Ҫ��ô�����ʼ����һֱ���崨�Ǽһ���¡�
�����⣬����ͬ����¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��С�ġ��ұ���С�ɡ�
���������˱�Ϯ������ʵ��������

��Ҫ���������ĺܶࡣ
�������ڲ������ļ��£��Ҷ�û����������档


���������졣
�����죬�����Ŵ���������˲�䡣
���ҲŻ�ѽ��췢�����������鵱����ʵ���ܰɡ�

��Ȼ�����Ĺ��ƻ����鲻���ɡ�
���뵽С�ĵ����壬�ұ����۾��������Ѿ����ڵ�С�ɣ�
�ᱯʹ��������ͷ�ϰɡ�

�����ڵ���ʹ�෭����������������Ŀ޽аɡ�

����֪����
����֪����������
�������ڲ�ͬ��ֻ�����ڣ��ҵ����ܵõ����ꡣ��Ϊ����
���������ܽ���ʹ��û�ġ������ȵ��˷ܡ�

������ֻ�����ڣ�ֻ����һ���ҳ�������ݳ����С�
��Ϊ���ܶȹ������쿪ʼ�ı�ʹ��

















</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå�������
//	CreateColorEXmul("�}ɫ100", 1500, #847000);
//	Fade("�}ɫ100",0,400,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����ڵ��ң��͵�����Ϊֹ���Ҳ�ͬ��
��ֻ��һ�㡣
���Ǿ����ҵ����ŷ�֮����

�����塣
������Ϊһ���뷨����һ�ָ�����ڵĻ�����
�������˷����ĵ����š�
�����̶ֳȲ����㹻��ֻ��һ��ջ����ѡ�

�������ҹ�ȥҲû���������ֶ�����
�������ˡ���Ϊ�������������ֶ�����
��Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������ˡ�
�����ε���������ˡ�
����ֵ�����ε���̬��

����������������֮��ŵ�һ�ξ߱������塣
����Ϊ��������սʿ�Ǳ�Ҫ�ġ�

����δ��������������ˡ�
��˵��սʿ�����ˣ������뵽��ֻ��������Ļ��������
������һζ���������Ķ������塣�Ǿ���ȫ����������
��Ұ��ϯ������֮���硣

��ӵ�����������˽��һ�����Ĵ�ѹ������֮�ˡ�Ϊ��
������ս��������ȴһ��Ҳû�С�
��������������Ϊ�ġ�

��Ȼ���������еġ�
��������֪���ˡ�
��֪�������Ų���Ϊ��������������Ϊ�ػ����˶�ս����
�˴��ڡ�

������ֻ��һ��Ҳ�á�
��ֻҪ���Ǹ��˵Ĵ��ڣ��Ҿ��ܹ��������塣

���ǲ�������һ�����⡣
��Ҳ���Ǻ��������װ�Ρ�
��Ҳ����̰���ڹ���ʵ�͵��¿����е�һ�����

�������˵�����ȷ���ڵĵ��ꡣ

����ˣ���Ҳ��̤��������·��
��̤����������������ɼ��ĵ�·��

{	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);}
//	SetVolume("@mbgm*", 2500, 0, null);}
��Ȼ�󡪡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ�`�����á��L�ȹ��ˬF���Σӣ�
	CreateSE("SE01","se��Ȼ_�L_Ұԭ01");
	MusicStart("SE01",1000,1000,0,1000,null,false);

	Wait(1000);

//	CreateSE("SE02","se��Ȼ_�L_Ұԭ02");
	CreateSE("SE02","se����_�z_װ��01");
	MusicStart("SE02",0,1000,0,600,null,false);

	PrintGO("�ϱ���", 15000);
	CreateColorSP("��ܞ", 5000, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg007_��m��·a_03.jpg");

	SetVolume("SE*", 2500, 0, null);
	FadeDelete("�ϱ���", 2000, true);

	WaitPlay("SE*", null);
//	WaitPlay("@mbgm*", null);

	WaitKey(1000);


//����ͨ�ꡤҹ
//��܇��������
//���֥�`����ֹ�ޤ�

	CreateSE("SE01","se�\��_܇_ֹͣ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	FadeDelete("��ܞ", 1000, true);

//	SoundPlay("@mbgm21",0,1000,true);

	SetVolume("SE*", 5000, 0, null);
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����衿
<voice name="����" class="����" src="voice/ma01/0250030a04">
����ô���𣿡���С�㡣��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0250040a03">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0250050a04">
��ŶŶ����˵����������˵�լۡ�����⸽���ء�
��������˳���ݷ�һ���𣿡�

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0250060a03">
��������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0250070a04">
����С�㣿��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0250080a03">
���ոա���
�������и���ɫ�Ķ�����������ӹ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0250090a04">
����ɫ�ġ�����������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0250100a03">
��ɴ������ʲôҲû�п�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0250110a04">
����ʵ����ǿ�����Ѱ�������С���˫��Ҳ��
������Ķ�����������̫������ô���ܿ��塣
��Ī��������֮��ģ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0250120a03">
�����ǡ���
������ҵ�˫��ֵ�ø�����������Ļ����Ǹ�����
�ƺ������ߡ���

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0250130a04">
��������������ҹĻ���٣���Ļ������λ����
��������ôæ�ء�
��������ͷ���ء���һ�����͵ı���ʵ���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//�����衿
<voice name="����" class="����" src="voice/ma01/0250140a04">
����Ȼ����С����۾�����ȷ��Ŷ����

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0250150a03">
��Ļ�������š�Ҳ�ԡ�
��Ӧ���ǰɡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0250160a03">
��ûʲôϡ���ġ���
��ֻ����˶��ѡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0250170a03">
��Ȼ��������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma01/0250180a03">
��Ϊʲô�����ҡ�
������ô�ġ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma01/0250190a04">
��������С�㣿��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 0);


	PrintBG("�ϱ���", 15000);
	CreateColorSP("��ܞ", 5000, "#000000");
	CreateTextureSP("�}�ţ�1000", 1000, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_a.jpg");

	FadeDelete("�ϱ���", 2000, true);

	WaitPlay("@mbgm*", null);
	WaitKey(1000);

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250200b56">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�������ڳ���ҹĻ�е�ͥԺ��
�������ŵ�����������ɢ������ɢ�ڰ��ĺ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣͣ����`�Ф��Ρ������ʥϥåԩ`�����
//���ţ֣�ͥ�������Ӱ��������Ƭϥ���������w��

	FadeDelete("��ܞ", 1000, true);

	WaitKey(1000);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw���w_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250210b56">
�����˰�������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0250220a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140a]
����æ����������������ϥ��Ų�������ȱ��ϡ���Ĭ��
���߸������ҡ�
�������ż�����˫�۷ų������ɫ�ʡ����Ҳ������⣬
��Ϊ���˽��̺����е�������



</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����5000", 5000, -380, -526, "cg/ev/resize/ev106_���w��Ҋ�¤�����_a.jpg");
	Move("�}����5000", 8000, @0, @400, DxlAuto, false);
	Fade("�}����5000", 600, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140b]
��������
���������ߡ�

��һֱ�뿴�������Ӱ��
�������Ѿ���ʴ���۵ף������ܹ���������ϸС�Ĳ��֡�
�ɻ����뿴�������������ˡ�����ϸ���������ø���һ
Щ������һЩ��

��Ը��ʵ���ˣ��ҵĴ����˿̾�����ǰ��
������Ī������Ϊ�Ҷ�����

��������ô���ܡ�һ������ʲô�����������Ұɡ���
���ն�������Ψһһ����������ô������ô���С�
�����û��Ҫ����ô�������������ҵ���ߡ�

��������������������Ϊ���Ĳ�������Ҳ˵��������
���ɼ������Ҳ�����������ĺ��⡣̫��Ϊ�顣�þ�
��Э�������������Ҫ����½�����С�

��������ˡ�
����˽������������������ˣ�����Ҳ�޷�����
�Լ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����5010", 5010, -920, -526, "cg/ev/resize/ev106_���w��Ҋ�¤�����_a.jpg");
	Fade("�}����5010", 600, 1000, null, true);

	SetFwC("cg/fw/fw���w_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250230b56">
���ǡ��Ǹ�������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0250240a00">
��������

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250250b56">
��Ҫ��Ҫ˵ʲô�ź��ء���Ȼ��˵������ǳ�
�ǳ��࡭���ɲ�֪��Ҫ��ô˵�źá���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0250260a00">
��������

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250270b56">
���Ǹ�����
���ң�������Ŷ����

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0250280a00">
������������

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250290b56">
���������㡣
���������ս����
������������塣
��������ĵ�·����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250300b56">
���Ұ�����
������һ�ȶ���ʧ��������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0250310a00">
��������

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250320b56">
����Ұľɽ��Ⱥ�˾�����ʱ��
���������������㣬�Ҿ��룬������˻�˵
��ս����ʱ���ս����ʵ��ȴֻ˵��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250330b56">
�������������ּһ���Ҽ�ֱ���������
�����������Ҵ����ء���Ȼ��ȷʵ�Ǹ�������
��ȴ����һ�������ϵġ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250340b56">
������˵���ڷ�ս�����ɵ�ʱ���ս����
������С��죬�����Ƿ�ս���ɵĶ��֡���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250350b56">
��ֻ��Щ�������ǵ�ͷ���ͻ�������ε��ˡ�
������ǿ����ˣ�����м�������ּһﵱ��
�֡���û��ȷʵ��ˡ���

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250360b56">
��ֻ���ڳ���ս���������������ʱ�����
��ս����
���ڳ��˵����߶����޴����ĳ��˻ӵ�����ʱ
����ֻ��������ʱ����Ż�ս������

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250370b56">
����Ϊ������
��Ϊ��û�����������Լ������ǡ���

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0250380a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����������ն�����ʲôҲû�лش�
��Ī������Щ������˼�������ͷ������
һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}����5000");
	FadeDelete("�}����5010", 600, true);

	SetFwC("cg/fw/fw���w_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250390b56">
����Ϊ�����������
�������������㡣��

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0250400a00">
��������

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250410b56">
��������������ϴ������塣
��������ֱ��������ȥ��������ġ���

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250420b56">
������������������������ǿ�󡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
�����������ɶ�Ϊʲôֻ��˵���������۵Ļ��ء�
������˵�����鲢�����ۡ�
������Ϊ��̫������

������Ҳ�ǡ��Һʹ�����ͬ����ʲôҲû������
�����ܲ�ͣ˵���ţ���Ҳû��Ϊ�����������ʲô
���顣ֻ�Ǹ��ſڿ��ӵļһ�ҵĻ���ֱ����¥
�����۵�������Ʒ��

����������ı�ġ������Ϊһ����ͬ���ˡ�
��Ϊ�ˡ��������������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250430b56">
��������Ŷ��
��������ϴ�������Ϊ�����������顣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�������Ǹ���Ӱ��
����Ⱦȫ��ĺ�����Ѫ����ɫ�������в���֮�⣬
��ȴ�ޱȿɿ���Ҫ˵Ϊ�Σ���Ϊ����ɫ��˵��ս��
�ľ��򡣻ƽ�����̫�������ʺ��и���ҫ�۶�Ŀ��

�������Ͼ���ͷ������������ס�
��������ǰ�ļ���������̵ĳ�ǽ��

������Ϊ�У���û�б���������η��Ķ��֡�
������Ϊ�ѣ���û�б����������İ��Ļ�����

��������
��ӵ������֮���ģ��������ߡ�

�����������ҡ�
�����������أ�ҡ��ҡͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma01/0250440a00">
�������ڡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250450b56">
����������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0250460a00">
������Ļ�飬���������ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��ͷ���д����ģ�ֻ�����������
�������ء������أ��������ԭ�ķ�����

�������Դ�סһ�ᣬȻ��
��
������������ԭ����ˡ�
��������������ס�







������ˣ����ǵġ�
����Ѱ��һЩ���˵����������Ҳû��ϵ��

���ն�������
����һ���Ƕ��Լ���Ϊ�������˰ɡ�

����������˶�ôΰ������飬����ȥ׷���
Ϊ��������Ϊ���ƵĽ����������˵�����Һ�С
�Ļ����ұ�ȫ���������˵�˳������¼�������
�ԲŻ�Ϊ֮ǰ��������Լ����֡�

�����ԲŻ�˵�����Ļ��԰ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��������������������ǣ�
������ȷȷʵʵ�ġ������û���������������϶��Ѿ�
���ˡ���ɱ���󣬹��������Ѿ����ŵ��Ǹ������˰ɡ�

��û��������ֽ����������Ϊ��ľ�����

���������л�㡣
�������㡣

��Ȼ����
����ȴҪ����Լ����������ǵó���
��
���������е��į�ء�

��������û��ϵ��
�������š�

����������Ļ�顣
�����Ψһһ��Ϊ�������ս�����ߡ�

��Ψһ�ġ�������Ӣ�ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma01/0250470a00">
����������Ҳû�С�
������Ļ�飬���������κεط�����

//��������
<voice name="����" class="����" src="voice/ma01/0250480a00">
������û�С��������۷ɡ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250490b56">
����Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������֡�
��ָ�����ʺ���ҫ����Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0250500b56">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������š������㡣
������Ϊ���롣
������ΪĿ�ꡣ

��Ȼ�󡪡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���ۥ磻�ȥ����ȡ��£ǣͣ��̤�ե��`�ɥ�����

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEXadd("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 200, 1000, null, true);

	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}��ܞ", 50, "#000000");
	FadeDelete("�ϱ���", 200, true);

//�����S�����ĥ��˥᣿
	SL_right(@0,@0,2500);
	SL_rightfade2(10);


//���ӣţ����`�󣡡��ԥ��Τ��I�P��˼���Ф�ߵ������
//��ͬ�r�˻��������Ф��椨������Ӱ����������ФäƤ��롣ȫ��˥�åɥޥ���

	PrintGO("�ϱ���", 10000);
	CreateColorSPmul("�}Ѫ��", 50, "#CC0000");
	CreateTextureSP("�}�ţ�30", 30, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_b.jpg");
	CreateTextureSP("�}�ţ�20", 20, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_c.jpg");
	CreateTextureSP("�}�ţ�10", 10, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_d.jpg");

	Delete("�ϱ���");
	CreateSE("SE01","se�M��_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�}Ѫ��", 300, 0, null, true);
	WaitKey(1000);

//�����`��
//�����w���פ��ؤ����x���

	CreateSE("SE02","se�M��_����01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}Ѫ��", 0, 1000, null, true);
	Delete("�}�ţ�30");
	Fade("�}Ѫ��", 300, 0, null, true);
	WaitKey(1000);


//�����`��
//�����w���פ�ܞ����

	CreateSE("SE03","se�M��_����01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("�}Ѫ��", 0, 1000, null, true);
	Delete("�}�ţ�20");
	FadeDelete("�}Ѫ��", 300, true);



	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��������������
���ף�

��Ϊʲô���һᵹ�ڵ����ء�
��Ϊʲô���۾���һƬģ���ء�

���������ǲ��ܺúÿ����������Ӱ����
������ϲ�����Ǹ���Ӱ��

���ɶ��ڸ�ʲô���ҡ�
���۵õ�������

����Ȼ��Ҳû�а취��
����Ŭ��һ�Ѱ���

����Ϊ���ڴ���������ǰ��
���������Ǹ��˿����Լ������������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�55", 5500, -60, -80, "cg/ev/resize/ev106_���w��Ҋ�¤�����_d.jpg");
	SetShade("�}�ţ�55", MEDIUM);

	Move("�}�ţ�55", 20000, @0, -560, DxlAuto, false);
	Fade("�}�ţ�55", 600, 1000, null, false);

	SoundPlay("@mbgm31",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����������<k>�ɶ��۾�ģ���ˡ�

���·����ֹ�Ѫ����ĸо���
������Ϊʲô�ء�����ʧѪ�������زŶԡ�
��Ȼ����ƣ�͵�Ե�ʰɡ�

����Ȼ��վ������ȴ��ôҲվ��������
���·����岻֪�ܵ�ʲô�ط�ȥ��һ����
����һ����ָҲ�����ˡ����Ƕ�������

���ܶ���ֻ���۾���
�����ԡ������ٻ����ٺúÿ�һ�۴�������Ӱ��
������ģ��������Ҳ�޷���Ը��

��Ϊʲô��ôģ���ء�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}�ţ�55", 0, 1000, null, true);
	CreateTextureSP("�}�ţ�54", 5400, -940, -1100, "cg/ev/resize/ev106_���w��Ҋ�¤�����_d.jpg");
	Zoom("�}�ţ�54", 0, 2000, 2000, null, true);

	Move("�}�ţ�54", 20000, @0, @480, DxlAuto, false);
	FadeDelete("�}�ţ�55", 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0306]
���о����䰡��
������ʪ�ˡ�

��Ϊʲô�ء�
���᣿

����Ϊʲô�ڿ��ء�
����ʲôֵ�ñ������ء�
������֡���

��������
����ʲô�ܱ��������顣
�����Ǳ����������������ᶼֹ��ס��

��Ϊʲô�ء�
������Ϊ��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ӣ�", 2900, -200, Middle, "cg/st/3d�����˜�_����_�i��.png");

	CreateColorEX("�׵�", 2800, "#FFFFFF");
	Fade("�}�ӣ�", 0, 300, null, false);

	FadeDelete("�׵�", 500, false);
	FadeDelete("�}�ţ�54", 3000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�������������ˡ�
������Ϊ�ٿ�������������Ӱ��

����Ϊ��ˮ��Ե�ʣ���Ұ�������������������״Ҳ
�޷��ֱ档
����һ������Ϊ����е������ɡ�
���������������ֹ��

��û��ϵ�ġ�
����ȵ���վ����Ϊֹ�ġ�
����Ϊ����˺����ᡣ

�����ԣ���΢˯һ�°ɡ���Ȼ����Ҳû�취��
����΢˯һ�£���ȥƣ�롭��Ȼ������������ȥ
����������Ӱ�ɣ�

��Ȼ��׷���Ǹ���Ӱ��
����ʼ������

��ȥ׷Ѱ���롣
��Ϊ�����ս�ĵ�·����Ҳ��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۥ磻�ȥ�����
	CreateColorEXadd("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 2000, 1000, null, true);

	WaitKey(1000);

	ClearWaitAll(2000, 3000);


}

..//������ָ��
//�Υե����롡"ma01_026.nss"

