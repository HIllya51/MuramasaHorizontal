//<continuation number="1040">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_018.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//��ϣ�
	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_skip=false;
	$SYSTEM_text_auto=false;

	if(#SYSTEM_break_play_movie){MoviePlay("dx/mvOP02.ngs", true);}
	else{MoviePlay("dx/mvOP02.ngs", false);}

	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg095_�ߏ�Ժ�ξ���_02=true;
	#ev213_�����ȴ����νY�F_a=true;
	#ev213_�����ȴ����νY�F_b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
 	#mvOP02=true;

	$PreGameName = $GameName;

	$GameName = "md01_019.nss";

}

scene md01_018.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_017.nss"

//���ţ֣������ܤ�����Ⱦ���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");

	OnBG(100,"bg095_�ߏ�Ժ�ξ���_02.jpg");

	FadeBG(0,true);
	FadeStA(0,false);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����Ǻ�Զȥ�ˣ��ҽ�����ת�ص��档
�����������Ľ��ж����Ƕ���

�����������һ����״��
����б��������Ť��������ֱ���ɽ���Ϲ����
�־���ʯϴˢ��һ�㡣

�����ɫ��װ�ף������������մ����Ѫ��Ƥ�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md01/0180010a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180020a01">
�����������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180030a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180040a01">
����ȥ����
���������������ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180050a00">
�����������㲻���𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180060a01">
���ǵġ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180070a00">
�����С���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180080a01">
���������Ѿ�����������Ľ����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180090a00">
������Ҫ�㡣��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180100a01">
����Ҫ��ֹ���������Ļ�����ȥ�ұ��
���аɡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180110a00">
��������Ļ���Ӯ���˵ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180120a01">
��Ϊʲô������
����Ϊ�޷��ֿ��������ġ������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180130a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180140a01">
�������ǡ�����

//��������
<voice name="����" class="��������" src="voice/md01/0180150a01">
���Ǹ�������ȫû��ϵ����

//��������
<voice name="����" class="��������" src="voice/md01/0180160a01">
�����������Ľ��и��ã�
�����Һõö�!!��

//��������
<voice name="����" class="��������" src="voice/md01/0180170a01">
���������������̬��������˰�?!
�����Ƕ�ô�п�Ĵ��ڣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180180a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md01/0180190a01">
���������㣡
���ֲ��������ߵĻ�����

//��������
<voice name="����" class="��������" src="voice/md01/0180200a01">
���޷�������ȷ���жϣ�
�����ͷ����ս�޷�սʤ�Ķ��֣�
��Ū����˲����ڵ������У���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180210a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180220a01">
�����ҡ��������ƶ�������ֶ���
�����������ţ�
����һ���ô�Ҳû�У���

//��������
<voice name="����" class="��������" src="voice/md01/0180230a01">
�����������Ͳ���Ҫ�Ұɡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180240a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180250a01">
������ȥ�ұ�Ľ��аɡ�����

//��������
<voice name="����" class="��������" src="voice/md01/0180260a01">
�����ҡ������˰ɡ���
����������ô�������
�����и��ðɡ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����˵�װ��ϸ΢�ز����š�
�����塢��������š�������Ӱ�������ص��š�

���������ڿ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md01/0180270a00">
����Ľ��У�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������飬�����ֹһ�Ρ�

��Ȼ��ÿһ���ֶ������ˡ�
����Ľ��лᱻ���ѡ������ɣ�����û��
�취��Ҫ�����Ǻ�ս���Ļ������˼���ʹ��
���������Ľ��������������

�����Զ��ʹ���˴�����

��<RUBY text="������">���ε�</RUBY>��

������������ϣ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md01/0180280a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180290a01">
�������߰�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������

����Ϊ������˵���ڸ��ԣ��������׼�����ҡ�ڲ�����
�����ң�ʱ��Υ��ָʾ��ʱ������<RUBY text="����">��ɧ</RUBY>��

��֮ǰ���������빥���ҡ�

�������ƶ���ֵĽ��ɡ�
���⸱���У�һ������ս����Ϊ<RUBY text="����">����</RUBY>�Ĵ��ڡ�

����������Ǵ�����

�����������һ·�����ģ�
���ҵĽ��С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md01/0180300a00">
��������
������������Ȼ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180310a01">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180320a00">
��������Ļ��Ͳ��С���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180330a01">
������ʲô��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180340a00">
���Ӻ��������󣬾����������ε�ս����
�����ܹ���������������Ϊ����İ�������

//��������
<voice name="����" class="����" src="voice/md01/0180350a00">
��Ҳ����Ϊ����İ��������Բ���
��ֹ���ѡ��ķ�����
��ֻ���ҵ��������������Ҳ�첻���ġ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180360a00">
����Ȼֱ�����ڡ����Ҳų��ϡ�
����ϣ�������Ҳ�ܽ���������ҡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180370a01">
������������

//��������
<voice name="����" class="��������" src="voice/md01/0180380a01">
���������ġ��������Ͳ��ǰ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180390a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180400a01">
����û�����Ƕ԰ɡ���

//��������
<voice name="����" class="��������" src="voice/md01/0180410a01">
����ʹ��ɱ����û���κ��������ˣ�
��һ��ʼ�����ĸ�ס�����֮��Ҳ����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180420a00">
�������š���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180430a01">
��ɱ�˺ܶ��ˣ�
���Ѿ��ᷳ�˰�?!��

//��������
<voice name="����" class="��������" src="voice/md01/0180440a01">
���޷������˰ɣ�
�����ԣ������ӵ��ͺ��ˣ���

//��������
<voice name="����" class="��������" src="voice/md01/0180450a01">
��ֻҪû���ҵĻ����Ͳ�����
���������ˣ�
���ܹ�սʤ���ǺŵĽ��У�һ��
��ĳ�������š�����

//��������
<voice name="����" class="��������" src="voice/md01/0180460a01">
����ֻҪȥ�ҵ��Ϳ����ˡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180470a00">
��û�����ֶ�����
��������ʹ����С���

{	FwC("cg/fw/fw��������_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180480a00">
�������ڴ������㣬��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se����_�z_�l����02");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateTextureEX("�}�ţ�", 4000, Center, Middle, "cg/ev/ev213_�����ȴ����νY�F_a.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md01/0180490a01">
������������

//��������
<voice name="����" class="��������" src="voice/md01/0180500a01">
��Ϊʲô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180510a00">
���ƶ�����𡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180520a00">
��ֻҪ������һ�𣬴ӽ�������Ҳ��
ÿ����һ�����˵�ͬʱնɱһ
���Լ��˶԰ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180530a01">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180540a00">
��ɱ��һЩ���������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180550a01">
��û����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180560a00">
�����ǡ�
�������⼴��˵��Ϊ��<RUBY text="����">����</RUBY>����
���Ǹ���֮�����𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180570a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180580a00">
����ɱ����ĸ����

//��������
<voice name="����" class="����" src="voice/md01/0180590a00">
��ɱ�������۷ɡ���

//��������
<voice name="����" class="����" src="voice/md01/0180600a00">
��ɱ��Ϻ�ĵĽ��ã�ʀ���֡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180610a00">
�����������ĸ����ǲ��ܱ���ˡ��������
�����ǡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180620a00">
��ɱ���崨������أ� 
��ɱ�˳����Ҿ������أ�
��ɱ�˷�ħС̫�ɵ����أ���

//��������
<voice name="����" class="����" src="voice/md01/0180630a00">
����·׿�أ�
���������Ρ��������أ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180640a00">
����Щ�Ϳ��Ա��������𡭡�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180650a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180660a00">
�������ԡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180670a00">
�������ǵĽǶ��������ǻ����ǻ��ˡ�
�����ǣ�����Ҳ����������ֵ��ơ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180680a00">
��<RUBY text="��������">�ƶ����</RUBY>��
������ԭ����ˣ�ɱ�˼��ǽ������
һͬն�ϡ������������ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180690a00">
��������
��������ȷ�ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180700a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md01/0180710a00">
��ɱ���Ƕ�����Ϊ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180720a00">
����һ���⡣
���κ�ɱ����Ϊ���������塣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180730a00">
��ս����û������ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180740a01">
����������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180750a00">
���������������������¡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180760a00">
�������Ǹ��㣬���Ǻ������Ľ��н�
Ե�Ļ����������������ս������
���������ܻ�����Լ��Ǹ���Ӣ�ۡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180770a00">
���Ǹ�Ϊ�˽�����˶��������������
�������ߡ�
���������ڴ����Ǻ�֮ʱ��Ҳ�����Ž�
������Ҳ�򵹰ɡ�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180780a00">
��������һ�¾����˷�����
�������ڱ����Ҷ��Ʒ����µ������У�
���������ҡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180790a01">
������������

{	FwC("cg/fw/fw��������_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180800a00">
��������
��������˵������û������ġ���

//��������
<voice name="����" class="����" src="voice/md01/0180810a00">
������Բ�Ҫ���������ʵ��
��������Ǳ�Ҫ�ġ���

//��������
<voice name="����" class="����" src="voice/md01/0180820a00">
��������������ѡ���Ľ��С���
���Ҿͻ�����<RUBY text="��������������������">��ɱ������ֻɱ������</RUBY>
�Ķ���֮������

//��������
<voice name="����" class="����" src="voice/md01/0180830a00">
��������Ϊ�����и���֮�˺Ͳ�����֮�ˣ�
�������Լ��������������˵�Ȩ��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180840a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180850a00">
���Ҳ����Ϊ�����޳ܵ�Ӣ�ۡ�
�����˿����������ң����������ν��
����ս����������������󡪡����������
���Ƶ�������͸����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180860a00">
���ǲ������������ѡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180870a01">
����������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180880a00">
����ѡ���㡣��

{	FwC("cg/fw/fw��������_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180890a00">
��ѡ���ƶ���ֵĽ��ɡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180900a00">
����Ҳѡ���Ұɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180910a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md01/0180920a01">
����ġ��������𡭡�����

{	FwC("cg/fw/fw��������_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180930a00">
�����Ƿ��㲻�ɵġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180940a01">
����������
���������ǡ�����

//��������
<voice name="����" class="��������" src="voice/md01/0180950a01">
�����ҾȻ��˶���������
��Ҳ���ҽ����Ǻ��е������ʱ���������ԡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180960a00">
��һ��Ҫ�Լ�һ����ս���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0180970a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180980a00">
����Ҳ����ͬ�����뷨��
���������Ҳ����ô���ŵİɡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0180990a00">
��������ʵ�ɣ�������
������һ���˶�����С�ġ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0181000a00">
��������Ҫ�˴ˡ�
������������Ϊһ��Ļ�����
�޷�ս���ġ���

{	FwC("cg/fw/fw��������_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/0181010a00">
��һ�𡭡�ս���ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0181020a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǲ��
	CreateSE("SE01","se����_Ѫ_�����01");

	CreatePlainEX("�}��д", 4990);
	SetShade("�}��д", HEAVY);

	CreateWindow("�}����", 5000, 579, Middle, 378, 580, false);
	SetAlias("�}����","�}����");
	CreateTextureEX("�}����/�}��", 5110, -900, -90, "cg/ev/resize/ev213_�����ȴ����νY�F_bl.jpg");
	Move("�}����/�}��", 6000, -460, @0, DxlAuto, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��д", 1000, 1000, null, false);
	Fade("�}����/�}��", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����������ס����Ĵָ��΢΢ҧ��ָ����
��Ѫ��ʼ�������������������С�

�����������ָ����ʹ��̫��ʱ�ز����ٵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/md01/0181030a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}����/�}��", null);

//���ãǲ��
	CreateSE("SE01b","se����_�z_�l����02");

	CreateWindow("�}����", 5000, 67, Middle, 378, 580, false);
	SetAlias("�}����","�}����");
	CreateTextureEX("�}����/�}��", 5110, -30, -570, "cg/ev/resize/ev213_�����ȴ����νY�F_bl.jpg");
	Move("�}����/�}��", 6000, -396, @0, DxlAuto, false);

	MusicStart("SE01b",0,500,0,600,null,false);
	Fade("�}����/�}��", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�������أ�������չ����֫����Ӧ�š�
��������

��װ�ױ�Ѫ����Ⱦ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}����/�}��", null);

	CreateTextureEX("�}��", 6000, Center, Middle, "cg/ev/resize/ev213_�����ȴ����νY�F_bl.jpg");
	Fade("�}��", 1000, 1000, null, true);

	WaitKey(1000);

//�����`�󡣥ۥ磻�ȥ����ȥۥ磻�ȥ���
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorEXadd("�}�ե�", 10000, "#FFFFFF");
	Fade("�}�ե�", 600, 1000, null, true);

	CreateTextureSP("�}��", 4010, Center, Middle, "cg/ev/ev213_�����ȴ����νY�F_b.jpg");

	Wait(500);

	Delete("�}�ţ�*");
	Delete("�}��д");
	Delete("�}��*");
	FadeDelete("�}�ե�", 600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����ͬ����ˮ����һ������֣�
�����Һʹ���֮�䴫�ݡ�

������ǡ�������

�������ӡ�����ϵ���ͳ�����嵶��ʽ��

���ڴ˽�Ե����
���Һʹ�����һ�γ�Ϊһ������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С��������
	WaitKey(1000);
	CreateVOICE("�����","md01/0181040e060");
	MusicStart("�����",0,1000,0,1000,null,false);

/*
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���ܥ����Τߡ��ƥ����ȱ�ʾ�ʤ�
//������㣯���١�
<voice name="����㣯����" class="����������" src="voice/md01/0181040e060">
���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//�����������g��������������
//���ե��`�ɥ�����

	WaitKey(500);

	CreateSE("SEL01","se����_����_̤���z��01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	WaitKey(1500);

	ClearWaitAll(3000, 2000);


//���ϣХ�`�ө`��������
//����ȫ�����Ȥ��Ԥ��Τǡ������餫�Υ���󥸤�

}

..//������ָ��
//�Υե����롡"md01_019.nss"