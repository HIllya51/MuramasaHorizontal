//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_025.nss_MAIN
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
	#bg077_�����µ���¥ǰ_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc01_026.nss";

}

scene mc01_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_024vs.nss"

//������¥
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg077_�����µ���¥ǰ_02.jpg");
	DrawDelete("�ϱ���", 300, 100, "slide_03_01_1", true);
	Delete("�ϱ���");

//���Х����ǈ�
	CreateSE("SE01","se����_�z_�l����02");
	StL(1000, @-60, @0,"cg/st/3d�Х���_����_ͨ��.png");

	MusicStart("SE01",0,1000,0,850,null,false);
	Move("@StL*", 300, @60, @0, Dxl1, false);
	FadeStL(300,true);

	SoundPlay("@mbgm21",1000,1000,true);

	SetFwC("cg/fw/fw���L_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���ܥ������������ȥ��ߥ˥åȡ�Wait a minute
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250010a11">
�����ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����L
	StR(1000, @0, @0, "cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw���L_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���ܥ������楢�ͩ`�ॢ��ɡ�����Your name and...
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250020a11">
���������������͡�����


{	FwC("cg/fw/fw�Х���_ͨ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250030a03">
��˵�������У�����������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250040a11">
������������


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250050a11">
�����㰡���������ξ����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250060a03">
���š�
������Ҳ�Ǹ������ӡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250070a11">
��������˵�Ʋ�������ʧ��֮ʱ��
�����������޷��ӱ��κ��Ʋõľ���
��û�뵽ƫƫ��ǲ���������


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250080a11">
����������Ҳ��������Ȼ�İɡ�
�������ǣǣȣѵĲ�ı��Ҳ����ô������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250090a03">
���ǵġ�
��������ǣǣȣѵ�ͬ�飬�ͻ��Ϊȷ���ҳ���
���Խ�ʯ������ǵ��ˣ�����ʹ�з����๥����
����ɱ����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250100a03">
���������Ǵ���ˡ�
����ʹ��Ϯ�����������˿���Ҳ����������
פ���й���������Ϊ����֪Ҳ���޴󰭡�����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250110a03">
��ʵ�ʶԾ�����Ѫ�����ģ��վ����Ǵ���ˡ�
���ǣȣ��ڶԹ����¼��Ա�����ͬʱ��ȴ����
�̼�������ڵĸ��顣��


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250120a03">
���ҵ���˾���»����Ǻ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`�ĩ`
	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250130a11">
�������ǣ���ı�ڶ�����
������������ũ��������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250140a03">
����ѽ�����ǡ���


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250150a11">
���Ǹ������������ԣ��Ǹ���Щ�������ֵ�
���֡���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250160a03">
������
����ֻҪ����û��������ɶ�ѡ�����һ����
��·�����ٻ��㲻��ʤ���ɡ���



{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250170a11">
��������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250180a03">
���ѵ����ǼƲ���Ū��ͷ����
���������ϵ������ȷ�����Ž���פ���Ĵ��
���ߴ��ɶ���ת��׾�����Σ���ԡ�����



{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250190a03">
����������Ϊ�����ư�˲�䷢���ı�Ļ���
���Ǿ;����ͷ�ˡ�
����ǣȣ����ִ��ģ����֯�������ܹ����
Ѹ���ز�ȡ�ж�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250200a03">
����ʹ��ı䷽�룬Ҳ�Ǿ������������Ļ���
����̸���Լ������ڲ����֮�󡭡�
�����ǿ�����ʮ���ֵ�������ֶԲ�Ŷ����



{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250210a11">
����������ԭ����ˡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250220a11">
����������������
��Ҳ����˵�����ǡ����������������������
���𡣡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250230a03">
���������ģ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250240a11">
���⻰�Ƕ���˵�ġ�
�������ξ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250250a03">
��������

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250260a11">
���������ϲ���������ɱ���ġ���

{	SoundPlay("@mbgm35", 0, 1000, true);
	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250270a11">
�������ܾ��ˣ�<RUBY text="����">��Ҳ</RUBY>�ܾ��ˡ�������
ֻ�÷����ƻ���
����Ϊû�а�ɱִ���ߡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250280a11">
���������컹�����ˡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250290a03">
������������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250300a11">
�������жϡ��������ǣǣȣѸɵġ���



//��������������Ȥ����˥奢�󥹤�
{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250310a03">
�������š�����


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250320a11">
��û��������Ϊ�����ξ�㡭������������
���Ű�ɱ����ļƻ�������ǣȣѱ��档��
�ң��ǣȣѱض���������һ����ƶ��ж����롣��


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250330a11">
���������Զ��ֽ���˻��ϣ�����<RUBY text="�ҵ�">��</RUBY>
�ļƻ��ܸ�Ļ������
���ƻ�����ʵ���ڵģ����д�ξ���֤�ˡ���
�Ժ�������Ļ������Ϊ�档��


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250340a11">
������Ļ��֮�ִݻٲ����𹬵���֮�󣬽�פ��
����Ǵ��Ļ������ΪΪ������Ļ����
����͵Ĺ���ͻ���ͬ��פ���������ִ���ߣ�
�����ܽ�פ����֧�䡭����


//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250350a11">
���ǣȣ�����ô�ƻ��İɡ�������ԭ������ô
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250360a03">
���������ԡ�
����֮������ֹ��פ�������ƻ�����ȡ����
�Ʋ������������ƺ���ؾ��������������
�Ρ�����


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250370a11">
���ԡ�
���̲��ݻ����������º��Ҷ����ȷ�š���



{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250380a11">
������һ�ж��ǰ׷�������
����ξ�������㷽����˵����ɱ�����ϵ�
���������ǣǣȣѡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250390a03">
��û��
���Ǹ��¼���˾���˵Ҳ��������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250400a03">
����λ���������ɱ����֮�£��Ҵ�δй¶��
�κ��ˡ�
����˵���ã��Ϳ�ũ�������ԣ����Ҳ�ǲ���
�ܡ���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250410a11">
������������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250420a03">
���ܾ���ʱ�����Ѿ�˵���ɡ�
����Ȼ<RUBY text="������������������">��ͬ�ƻ�����Ҫ����</RUBY>������Ϊ˽�������Щ
��æ������޷�Э���󷽡�����



{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250430a03">
���������ϵ���˼�����Щ���Ϳ����ˡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250440a11">
�������ǰ���
��û��������ҵ��������㡣��


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250450a03">
�����ɻ�����Ů��˵�Ļ���
��������������ɡ���


{	FwC("cg/fw/fw���L_Ц�.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250460a11">
��������������һ�С�ĵġ�
�������������ǡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250470a11">
���ǡ�����˭��
���ڷ�ΰ����죬��˭Ϯ���˰�ᦹ�����


//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250480a11">
����˭ˣ�����ǣ�
��������ԭ������<RUBY text="����������">ˣ�˵���ͼ</RUBY>�ɣ���


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250490a03">
����������������


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250500a11">
�������µ���񣬶�˵���档
������������Σ������������ô��˲��ԡ���

//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250510a11">
���ӽ�����������������פ���жԵ��޴��о���
�������塣��


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250520a03">
��û��
����Ȼ�����ǵ�����������������ˣ��ض�Ҫ
�ش�����<RUBY text="��������">��ʾ����</RUBY>����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250530a03">
����Ϊ���Ǿ�����������������֧��Ȩ����
�֡���


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250540a11">
�������ס�
�����������ߣ�Ҳ����ҡβ��������



{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250550a03">
�������ճ��𳤡�
���ұ��������<RUBY text="����">��ı</RUBY>�Ʋá���



{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250560a03">
�����ǡ�����


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250570a11">
��������ı����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250580a03">
��������


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250590a11">
�����ڽ�פ����������Ҳ�ȽϺð�ɡ�
���Ӻ���ͻ�������൱�󡣡�


//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250600a11">
�����ǽ��¼������������ʹ�����¡���
Ϊ�á�
��Ҳ������ν�ľ���鳼����


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250610a11">
����������˵��Ҳδ���Ǵ���ġ�
����Ϊ�ҵ�ȷ�����ڹ�������ߣ�ȴδ�����
��ȷ���������µ����Ρ���



{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250620a03">
��������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250630a03">
���޷��õ����ǵ���������ȱ������Ҳ��ԭ��
֮һ��
������һ����˵���ұ����Ǹ������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0250640a03">
���Ǿ�������Ը��
���ճ��𳤡���


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0250650a11">
�����Եظ�л����
�������ξ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);
}

..//������ָ��
//�Υե����롡"mc01_026.nss"