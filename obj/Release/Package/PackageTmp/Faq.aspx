<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="Faqs" Codebehind="Faq.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div id="content">
        <div id="mainbar-full">
            <div class="subheader">
                <h1>
                    Frequently Asked Questions</h1>
            </div>
            <div class="content-page">
                <h2>
                    i&#39;VE LOST MY PASSWORD, WHAT SHOULD I DO?</h2>
                <p>
                    Email me!</p>
                <ul>
                    <li>a specific programming problem</li>
                    <li>a software algorithm</li>
                    <li>software tools commonly used by programmers</li>
                    <li>matters that are <i>unique</i> to the programming profession</li>
                </ul>
                <p>
                    … then you’re in the right place to ask your question!
                </p>
                <p>
                    <a name="ask"></a>Please <a href="/search">look around</a> to see if your question
                    has already been asked (and maybe even answered!) before you ask. It’s also perfectly
                    fine to ask and answer your own question, as long as you pretend you’re on <a href="http://en.wikipedia.org/wiki/Jeopardy%21">
                        <i>Jeopardy!</i></a> – phrase it in the form of a question.
                </p>
                <h2>
                    What kind of questions should I <i>not</i> ask here?</h2>
                <a name="dontask"></a>
                <p>
                    You should only ask <span class="revision-comment">practical, answerable questions based
                        on actual problems that you face</span>. Chatty, open-ended questions diminish
                    the usefulness of our site and push other questions off the front page. To prevent
                    your question from being flagged <a href="#deletion">and possibly removed</a>, <b>avoid</b>
                    asking subjective questions where …
                </p>
                <ul>
                    <li>every answer is equally valid: “What’s your favorite ______?”</li>
                    <li>your answer is provided along with the question, and you expect more answers: “I
                        use ______ for ______, what do you use?”</li>
                    <li>there is no actual problem to be solved: “I’m curious if other people feel like
                        I do.”</li>
                    <li>we are being asked an open-ended, hypothetical question: “What if ______ happened?”</li>
                    <li>it is a rant disguised as a question: “______ sucks, am I right?”</li>
                </ul>
                <p>
                </p>
                <p>
                    If your motivation for asking the question is “I would like to participate in a
                    discussion about ______”, then you should not be asking here. If your motivation
                    is “I would like others to explain ______ to me”, then you are probably OK. (The
                    above section was adapted from <a href="http://faq.metafilter.com/tags/chatfilter">MetaFilter’s
                        FAQ</a>. For more detail, see <a href="http://blog.stackoverflow.com/2010/09/good-subjective-bad-subjective/">
                            six guidelines for great subjective questions</a>.)
                </p>
                <a name="meta"></a>
                <p>
                    If your question is about the site itself, please don't ask it here. <a href="http://meta.stackoverflow.com">
                        Visit our meta-discussion site</a> where you can talk about things like what
                    questions are appropriate, what tags we should use, suggest a feature, point out
                    a bug, or generally discuss how Stack Overflow works.
                </p>
                <p>
                    If your question would be of interest to …
                </p>
                <ul>
                    <li><b>System administrators and desktop support professionals</b>, ask on <a href="http://serverfault.com">
                        Server Fault</a>.</li>
                    <li><b>Computer enthusiasts and power users</b>, ask on <a href="http://superuser.com">
                        Super User</a>.</li>
                    <li><b>Pro webmasters</b>, ask on <a href="http://webmasters.stackexchange.com">Webmasters</a>.</li>
                    <li><b>Expert programmers interested in professional discussions on software development</b>,
                        ask on <a href="http://programmers.stackexchange.com">Programmers</a>.</li>
                </ul>
                <h2>
                    <a name="benice"></a>Be nice.</h2>
                <p>
                    <span class="revision-comment">Treat others with the same respect you’d want them to
                        treat you.</span> We’re all here to learn together. Be tolerant of others who
                    may not know everything you know. Bring your sense of humor.</p>
                <h2>
                    <a name="behonest"></a>Be honest.</h2>
                <p>
                    Above all, be honest. If you see misinformation, vote it down. Add comments indicating
                    what, specifically, is wrong. Provide better answers of your own. Best of all —
                    edit and improve the existing questions and answers!
                </p>
                <h2>
                    <a name="login"></a>Do I have to log in or create an account?</h2>
                <p>
                    Nope. You can answer and ask questions to your heart’s content as an anonymous user,
                    much like <a href="http://www.wikipedia.org/">Wikipedia</a>. However, there are
                    some things you won’t be able to do on the site without registering. But it’s <a
                        href="/users/login">easy to register</a> if you want to. All you need is an
                    <a href="http://openid.net/what/">OpenID</a>.
                </p>
                <h2>
                    <a name="howtoask"></a>How do I ask questions here?</h2>
                <p>
                    When you post a new question, other users will almost immediately see it and try
                    to provide good answers. This often happens in a matter of minutes, so be sure to
                    check back frequently when your question is still new for the best response.</p>
                <p>
                    If your question needs clarification, you will see <span class="revision-comment">comments</span>
                    in smaller type below your question. If other users ask you for more information
                    in the comments, <span class="revision-comment">edit</span> your question using
                    the edit link just below your original question. Providing clarification promptly
                    will help get you the best answers.</p>
                <p>
                    As you see new answers to your question, <span class="revision-comment">vote up</span>
                    the helpful ones by clicking the upward pointing arrow to the left of the answer.
                    Answers are normally sorted by vote score so the most highly voted answers float
                    to the top. Other users will also vote on the answers to your question.</p>
                <p>
                    When you have decided which answer is the most helpful to you, mark it as the <span
                        class="revision-comment">accepted answer</span> by clicking on the check box
                    outline to the left of the answer. This lets other people know that you have received
                    a good answer to your question. Doing this is helpful because it shows other people
                    that you’re getting value from the community. (If you don’t do this, people will
                    often politely ask you to go back and accept answers for more of your questions!)</p>
                <h2>
                    <a name="reputation"></a>What is reputation?</h2>
                <p>
                    Reputation is completely optional. Normal use of Stack Overflow — that is, asking
                    and answering questions, or submitting an edit — does not require any reputation
                    whatsoever.
                </p>
                <p>
                    If you’d like to help us run Stack Overflow, you’ll need to earn some reputation
                    first. Reputation is a rough measurement of <span class="revision-comment">how much
                        the community trusts you</span>. Reputation is never given, it is earned by
                    convincing fellow users that you know what you’re talking about.
                </p>
                <a name="reputation-gain"></a>
                <p>
                    The primary way to gain reputation is by posting good questions and useful answers.
                    Your peers will vote on your posts, and those votes will cause you to gain (or,
                    in rare cases, lose) reputation:
                </p>
                <table>
                    <tbody>
                        <tr>
                            <td>
                                answer is voted up
                            </td>
                            <td class="x">
                                +10
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                question is voted up
                            </td>
                            <td class="x">
                                +5
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                answer is accepted
                            </td>
                            <td class="x">
                                +15
                            </td>
                            <td>
                                (+2 to acceptor)
                            </td>
                        </tr>
                        <tr>
                            <td>
                                post is voted down
                            </td>
                            <td class="x">
                                -2
                            </td>
                            <td>
                                (-1 to voter)
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p>
                    A maximum of <b>30</b> votes can be cast per user per day, and you can earn a maximum
                    of <b>200</b> reputation per day (although accepted answers and bounty awards are
                    immune to this limit). Please note that votes for posts marked “community wiki”
                    do not generate reputation.
                </p>
                <p>
                    The other way to gain reputation is by suggesting edits to existing posts as a new
                    registered user. Each edit will be peer reviewed, and if it is accepted, you will
                    earn <b>+2</b> reputation. You can only earn a maximum of <b>+1000</b> total reputation
                    through suggested edits, however.
                </p>
                <p>
                    Amass enough reputation points and Stack Overflow will grant you <a href="/privileges">
                        additional privileges</a>:
                </p>
                <a name="reputation-abilities"></a>
                <table>
                    <tbody>
                        <tr>
                            <td class="x">
                                15
                            </td>
                            <td>
                                Vote up
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                15
                            </td>
                            <td>
                                Flag for moderator attention
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                50
                            </td>
                            <td>
                                Leave comments<sup>†</sup>
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                100
                            </td>
                            <td>
                                Edit community wiki posts
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                125
                            </td>
                            <td>
                                Vote down (costs <b>1</b> rep)
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                200
                            </td>
                            <td>
                                Reduced advertising
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                250
                            </td>
                            <td>
                                Vote to close, reopen, or migrate your questions
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                500
                            </td>
                            <td>
                                Retag questions
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                1000
                            </td>
                            <td>
                                Show total up and down vote counts
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                1500
                            </td>
                            <td>
                                Create new tags
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                2000
                            </td>
                            <td>
                                Edit other people’s posts, vote to approve or reject suggested edits
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                3000
                            </td>
                            <td>
                                Vote to close, reopen, or migrate any questions
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                5000
                            </td>
                            <td>
                                Vote to approve or reject suggested tag wiki edits
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                10000
                            </td>
                            <td>
                                Vote to delete closed questions, access to moderation tools
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                15000
                            </td>
                            <td>
                                Protect questions to prevent answers by new users
                            </td>
                        </tr>
                        <tr>
                            <td class="x">
                                20000
                            </td>
                            <td>
                                Vote to delete negatively voted answers and stronger question deletion votes
                            </td>
                        </tr>
                    </tbody>
                </table>
                <p style="font-size: 80%;">
                    <sup>†</sup> you can always comment on your questions and answers, and any answers
                    to questions you’ve asked, even with 1 rep.</p>
                <p>
                    At the high end of this reputation spectrum there is little difference between users
                    with high reputation and <span class="mod-flair" title="moderator">♦</span> moderators.
                    That is very much intentional. We don’t run Stack Overflow. The community does.
                </p>
                <h2>
                    <a name="bounty"></a>What if I don’t get a good answer?</h2>
                <p>
                    First, make sure you've <a href="/questions/how-to-ask">asked a good question</a>.
                    In order to get good answers to your question, you may need to put additional effort
                    into your question. Edit your question to provide status and progress updates. Document
                    your own continued efforts to answer your question. This will naturally bump your
                    question and get more people interested in it.
                </p>
                <p>
                    If, despite your best efforts, you feel questions aren’t getting good answers, you
                    can help by <span class="revision-comment">offering a bounty</span>. Slice off anywhere
                    from <span class="bounty-award">+50</span> to <span class="bounty-award">+500</span>
                    of your own hard-earned reputation and attach it to <i>any</i> question as a bounty.
                    The bountied question will appear with a special indicator in all question lists,
                    and it will also be visible on the <a href="/?tab=featured">home page Featured tab</a>
                    for the duration of the bounty period.
                </p>
                <p>
                    Click the bounty award <span class="bounty-award">icon</span> next to each answer
                    to permanently award your bounty to the answerer. There are a few other rules around
                    bounties:
                </p>
                <ul>
                    <li>Questions must be at least <b>2</b> days old to be eligible for a bounty. </li>
                    <li>Users must have at least <b>75</b> reputation to offer a bounty.</li>
                    <li>There can only be <b>1</b> active bounty per question and per user at any given
                        time.</li>
                    <li>Once initiated, the bounty period lasts <b>7</b> days.</li>
                    <li>After starting a bounty, you must wait <b>1</b> day before awarding it.</li>
                    <li>If you do not award your bounty within <b>7</b> days, the highest voted answer created
                        <i>after the bounty started</i> with at least 2 upvotes will be awarded half the
                        bounty amount.</li>
                </ul>
                <p>
                    In any case, you will <i>always</i> give up the amount of reputation specified in
                    the bounty, so if you start a bounty, be sure to follow up and award your bounty
                    to the best answer!
                </p>
                <p>
                    As an additional bonus, bounty awards are immune to the daily reputation cap and
                    community wiki mode.</p>
                <h2>
                    <a name="close"></a>Why are some questions closed?</h2>
                <p>
                    Questions that are deemed <span class="revision-comment">sufficiently off-topic</span>
                    may be closed by the community. Users with <b>3000</b> reputation can cast up to
                    <b>50</b> close votes per day. When a question reaches <b>5</b> close votes, it
                    is marked as closed, and will no longer accept answers. Closed questions may be
                    opened by casting reopen votes in the same manner. However, you can only vote to
                    close or reopen a question once.
                </p>
                <h2>
                    <a name="deletion"></a>Why are some questions or answers removed?</h2>
                <p>
                    Questions that are extremely off topic, or of very low quality, may be removed.
                    Over time, closed questions that are not useful as signpoints to other questions
                    may also be removed, as well as questions which have no significant activity over
                    a very long period after being asked. For additional guidance, see <a href="/questions/how-to-ask">
                        How to Ask</a>.
                </p>
                <p>
                    Answers that <span class="revision-comment">do not fundamentally answer the question
                        may be removed</span>. Answers that are …
                </p>
                <ul>
                    <li>commentary on the question or other answers</li>
                    <li>asking another, different question</li>
                    <li>“thanks!” or “me too!” responses</li>
                    <li>exact duplicates of other answers</li>
                    <li>not even a <i>partial</i> answer to the actual question</li>
                </ul>
                <p>
                    … may be be removed. If you wish to improve an existing answer, click edit. For
                    additional guidance, see <a href="/questions/how-to-answer">How to Answer</a>.
                </p>
                <h2>
                    <a name="flagging"></a>What if I see bad things happening?</h2>
                <p>
                    Please use our flagging system to let us know about it. Each comment has a small
                    flag icon, and every post has a flag menu at the bottom. Take advantage of it! We
                    actively moderate our community, but we need your help to do so. Anything that is
                    getting consistently flagged by our community members <i>will</i> be investigated
                    and followed up on. And of course you can always <a href="mailto:team@stackoverflow.com">
                        email us directly</a> if you feel the matter is urgent.
                </p>
                <h2>
                    <a name="signatures"></a>Can I use a signature or tagline?</h2>
                <p>
                    Please <i>don’t</i> use signatures or taglines in your posts. Every post you make
                    is already “signed” with your standard user card, which links directly back to your
                    user page. Your user page belongs to you — fill it with information about your interests,
                    links to stuff you’ve worked on, or whatever else you like!
                </p>
                <h2>
                    <a name="editing"></a>Other people can edit my stuff?!</h2>
                <p>
                    Like Wikipedia, <span class="revision-comment">this site is collaboratively edited</span>,
                    and all edits are tracked. If you are not comfortable with the idea of your questions
                    and answers being edited by other trusted users, this may not be the site for you.
                </p>
                <h2>
                    <a name="promotion"></a>May I promote products or websites I am affiliated with
                    here?</h2>
                <p>
                    Be careful, because the community frowns on overt self-promotion and tends to vote
                    it down and flag it as spam. Post good, relevant answers, and if they happen to
                    be about your product or website, so be it. However, you <i>must</i> disclose your
                    affiliation in your answers. Also, if a huge percentage of your posts include a
                    mention of your product or website, you're probably here for the wrong reasons.
                    Our advertising rates are quite reasonable; <a href="http://stackoverflow.com/about/contact">
                        contact our ad sales team</a> for details. We also offer <a href="http://meta.stackoverflow.com/questions/tagged/open-source-advertising">
                            free vote-based advertising for open source projects</a>.
                </p>
                <h2>
                    <a name="search"></a>Are there any search options?</h2>
                <p>
                    Indeed there are. Advanced Super Ninja Search Options no less. <a href="/search">Visit
                        the search page to see them</a> … but you must first snatch this pebble from
                    my hand, grasshopper.</p>
                <h2>
                    What about…</h2>
                <p>
                    If you’re looking for excruciating detail, our <a href="http://meta.stackoverflow.com">
                        meta-discussion site</a> hosts a section of constantly evolving <b><a href="http://meta.stackoverflow.com/questions/tagged/faq">
                            frequently asked questions</a></b> that document everything about the site.
                    Or, maybe you’d just like to learn a little more <a href="/about">about us</a>?
                </p>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
