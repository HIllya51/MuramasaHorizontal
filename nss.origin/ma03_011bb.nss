
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011bb.nss_MAIN
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
	#bg036_������ͨ·_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma03_011bb_routeFlag==true){$ma03_011bb_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_012.nss";

}

scene ma03_011bb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_011b.nss"

//���g�`�äƤϤ��ʤ�

	SoundPlay("@mbgm17",0,1000,true);

	PrintBG("������", 30000);
	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);
	FadeDelete("������", 0, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/ma03/011b0390a00">
����û�д���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0400a02">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0410a00">
�������Ҵ���Ѿ��˽⡣
��͵�������İ��������꣬���Ǹ�����Ա
�ֱ��ظ��˳��������𡣡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0420a02">
���Ǹ����ǡ���������
�����ԣ��Ҳš�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0430a00">
���������Ҳ����ʲô����˼����¡�
��������ʩ�б�������ӵ���Ϊ����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0440a00">
������Ϊ��ķ�ŭ����ȷ�ġ���

{	FwC("cg/fw/fwһ��_Ц�a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0450a02">
�������ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������������
������Ҫ����ȥ�ı���ֱֱͦ������������ƾ
��Ϣ�Ҿ���ʶ������㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0460a02">
���Ǹ�����Ȼ��������
���ն�������Ϊʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0470a00">
������֮һ�����ǵ����ǵ�Ŀ�ģ�����ɧ��
����˵���ϲߡ�
��ʵ���ϣ���һ������Ҳ�޷���ȥ���顣��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0480a02">
�������ǡ�
���ǳ���Ǹ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0490a00">
��û�б�Ҫ��Ǹ��
������֮����������������ȥ�Ļ�����Ȼ�޷�
���Ⱪ���¼��ķ�����
�����Բŵ�ͷ�����黯�������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0500a02">
����ô������
���ն������Ļ������ּһ�����׾پ͡�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0510a00">
�������Ӧ�ð������ڵأ�����ͷ����˵
�Բ����´���Ҳ�����ˣ����𣿡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0520a02">
�����������Ǹ�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0530a02">
���ǡ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0540a00">
��������������
�������ǲ�����ȷҲ˵��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0550a00">
�����ǣ�����������������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0560a02">
������Ϊʲô�أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0570a00">
���ղ�Ҳ˵����
��������ʩ�б����Ǳ��ӵġ���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0580a02">
������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0590a00">
���Ǹ����ӿ���ȥ��������ͨƽ��
���������ս���������ˣ��ҹ�����û���κ�ȡ
ʤ�ķ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0600a00">
������������Ϊ���֣���������Ϊ�Σ��������ʩ
�б����Ļ�����
������Ҳ���Ӷ��Լ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
������<RUBY text="��������">�������</RUBY>��
�����Ӷ����Լ���

���Ӷ���Ż�ĵز���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0610a02">
����������
���ɡ����ǣ��Է��ȶ��ֵĻ�����Ҳ
û�취�𡭡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0620a00">
������һ���㲻��ʲô��
����ȫ�������ۡ���

//��������
<voice name="����" class="����" src="voice/ma03/011b0630a00">
����<RUBY text="��������">ʩ���˺�</RUBY>��ȣ�
�����˺������㲻����ʹ����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0640a02">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0650a00">
��һ������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0660a02">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011b0670a00">
���������顣
������������һ���ж�����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0680a02">
����������������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/011b0690a02">
�����ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��һ���øжȣ�����
//$Ichizyou_Flag = $Ichizyou_Flag+2;
	$ma03_011bb_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


	ClearWaitAll(1000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_012.nss"