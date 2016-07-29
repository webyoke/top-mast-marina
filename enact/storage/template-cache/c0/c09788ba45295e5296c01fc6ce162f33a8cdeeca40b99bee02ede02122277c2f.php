<?php

/* /events.html */
class __TwigTemplate_f9de430b1aeddbd25b62aabea8d1d6013f3b2b5d16f3c719ea91bf98f72eb971 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 5
        $this->parent = $this->loadTemplate("_layout.html", "/events.html", 5);
        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "_layout.html";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        if ( !$this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "id", array())) {
            // line 2
            $this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "view", array()), "title", array(0 => "Top Mast Marina Events"), "method");
        }
        // line 5
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 7
    public function block_content($context, array $blocks = array())
    {
        // line 8
        echo "
    ";
        // line 9
        if ($this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "id", array())) {
            // line 10
            echo "
        <div class='event-banner'>
            ";
            // line 12
            echo $this->getAttribute($this->getAttribute($this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "eventImage", array()), "assetFieldHandle", array()), 0, array(), "array");
            echo "
            <div class='event row'>
                <h1 class='title'>";
            // line 14
            echo $this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "title", array());
            echo "</h1>
                ";
            // line 15
            echo $this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "content", array());
            echo "
            </div>
        </div>

        <div class='event-date'>
            ";
            // line 20
            echo $this->getAttribute($this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "eventDate", array()), "date", array());
            echo "<br>
            ";
            // line 21
            echo $this->getAttribute($this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "eventDate", array()), "time", array());
            echo "
        </div>

    ";
        } else {
            // line 25
            echo "
        <div class='row events'>

            <h1 class='title'>Events</h1>

            ";
            // line 30
            list($context['page'], $context["events"]) = \App::with('\Enact\template\Enact')->page($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute((isset($context["enact"]) ? $context["enact"] : null), "entry", array()), "sectionHandle", array(0 => "events"), "method"), "order", array(0 => "publishOn DESC"), "method"), "limit", array(0 => 2), "method"));
                        // line 31
            echo "                ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["events"]) ? $context["events"] : null));
            foreach ($context['_seq'] as $context["_key"] => $context["event"]) {
                // line 32
                echo "                    <a href='";
                echo $this->getAttribute($context["event"], "url", array());
                echo "' class='row collapse'>
                        <div class='small-12 medium-4 columns'>
                            ";
                // line 34
                echo $this->getAttribute($this->getAttribute($this->getAttribute($context["event"], "eventImage", array()), "assetFieldHandle", array()), 0, array(), "array");
                echo "
                        </div>
                        <div class='small-12 medium-8 columns'>
                            <h2>";
                // line 37
                echo $this->getAttribute($context["event"], "title", array());
                echo "</h2>
                            <div class='description'>";
                // line 38
                echo $this->getAttribute($context["event"], "content", array());
                echo "</div>
                            <p class='date'>";
                // line 39
                echo $this->getAttribute($context["event"], "eventDate", array());
                echo "</p>
                        </div>
                    </a>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['event'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 43
            echo "
                <ul class='pagination'>
                    ";
            // line 45
            if ($this->getAttribute((isset($context["page"]) ? $context["page"] : null), "prevUrl", array())) {
                // line 46
                echo "                        <li class='pagination-previous'><a href='";
                echo $this->getAttribute((isset($context["page"]) ? $context["page"] : null), "prevUrl", array());
                echo "'>previous</a></li>
                    ";
            }
            // line 48
            echo "
                    ";
            // line 49
            $context["pages"] = $this->getAttribute((isset($context["page"]) ? $context["page"] : null), "getPrevUrls", array(0 => 5), "method");
            // line 50
            echo "                    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["pages"]) ? $context["pages"] : null));
            foreach ($context['_seq'] as $context["i"] => $context["page"]) {
                // line 51
                echo "                        <li><a href='";
                echo $context["page"];
                echo "'>";
                echo $context["i"];
                echo "</a></li>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['i'], $context['page'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 53
            echo "
                    <li class='current'><a href='";
            // line 54
            echo $this->getAttribute((isset($context["page"]) ? $context["page"] : null), "currentUrl", array());
            echo "'>";
            echo $this->getAttribute((isset($context["page"]) ? $context["page"] : null), "currentPage", array());
            echo "</a></li>

                    ";
            // line 56
            $context["pages"] = $this->getAttribute((isset($context["page"]) ? $context["page"] : null), "getNextUrls", array(0 => 5), "method");
            // line 57
            echo "                    ";
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["pages"]) ? $context["pages"] : null));
            foreach ($context['_seq'] as $context["i"] => $context["page"]) {
                // line 58
                echo "                        <li><a href='";
                echo $context["page"];
                echo "'>";
                echo $context["i"];
                echo "</a></li>
                    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['i'], $context['page'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 60
            echo "
                    ";
            // line 61
            if ($this->getAttribute((isset($context["page"]) ? $context["page"] : null), "nextUrl", array())) {
                // line 62
                echo "                        <li class='pagination-next'><a href='";
                echo $this->getAttribute((isset($context["page"]) ? $context["page"] : null), "nextUrl", array());
                echo "'>next</a></li>
                    ";
            }
            // line 64
            echo "                </ul>

            ";
            unset($context['page'], $context["events"]);
            // line 67
            echo "        </div>

    ";
        }
        // line 70
        echo "
";
    }

    public function getTemplateName()
    {
        return "/events.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  200 => 70,  195 => 67,  190 => 64,  184 => 62,  182 => 61,  179 => 60,  168 => 58,  163 => 57,  161 => 56,  154 => 54,  151 => 53,  140 => 51,  135 => 50,  133 => 49,  130 => 48,  124 => 46,  122 => 45,  118 => 43,  108 => 39,  104 => 38,  100 => 37,  94 => 34,  88 => 32,  83 => 31,  81 => 30,  74 => 25,  67 => 21,  63 => 20,  55 => 15,  51 => 14,  46 => 12,  42 => 10,  40 => 9,  37 => 8,  34 => 7,  30 => 5,  27 => 2,  25 => 1,  11 => 5,);
    }
}
/* {% if not entry.id %}*/
/*     {% do enact.view.title('Top Mast Marina Events') %}*/
/* {% endif %}*/
/* */
/* {% extends "_layout.html" %}*/
/* */
/* {% block content %}*/
/* */
/*     {% if entry.id %}*/
/* */
/*         <div class='event-banner'>*/
/*             {{ entry.eventImage.assetFieldHandle[0] }}*/
/*             <div class='event row'>*/
/*                 <h1 class='title'>{{ entry.title }}</h1>*/
/*                 {{ entry.content }}*/
/*             </div>*/
/*         </div>*/
/* */
/*         <div class='event-date'>*/
/*             {{ entry.eventDate.date }}<br>*/
/*             {{ entry.eventDate.time }}*/
/*         </div>*/
/* */
/*     {% else %}*/
/* */
/*         <div class='row events'>*/
/* */
/*             <h1 class='title'>Events</h1>*/
/* */
/*             {% page enact.entry.sectionHandle('events').order('publishOn DESC').limit(2) as events %}*/
/*                 {% for event in events %}*/
/*                     <a href='{{ event.url }}' class='row collapse'>*/
/*                         <div class='small-12 medium-4 columns'>*/
/*                             {{ event.eventImage.assetFieldHandle[0] }}*/
/*                         </div>*/
/*                         <div class='small-12 medium-8 columns'>*/
/*                             <h2>{{ event.title }}</h2>*/
/*                             <div class='description'>{{ event.content }}</div>*/
/*                             <p class='date'>{{ event.eventDate }}</p>*/
/*                         </div>*/
/*                     </a>*/
/*                 {% endfor %}*/
/* */
/*                 <ul class='pagination'>*/
/*                     {% if page.prevUrl %}*/
/*                         <li class='pagination-previous'><a href='{{ page.prevUrl }}'>previous</a></li>*/
/*                     {% endif %}*/
/* */
/*                     {% set pages = page.getPrevUrls(5) %}*/
/*                     {% for i,page in pages %}*/
/*                         <li><a href='{{ page }}'>{{ i }}</a></li>*/
/*                     {% endfor %}*/
/* */
/*                     <li class='current'><a href='{{ page.currentUrl }}'>{{ page.currentPage }}</a></li>*/
/* */
/*                     {% set pages = page.getNextUrls(5) %}*/
/*                     {% for i,page in pages %}*/
/*                         <li><a href='{{ page }}'>{{ i }}</a></li>*/
/*                     {% endfor %}*/
/* */
/*                     {% if page.nextUrl %}*/
/*                         <li class='pagination-next'><a href='{{ page.nextUrl }}'>next</a></li>*/
/*                     {% endif %}*/
/*                 </ul>*/
/* */
/*             {% endpage %}*/
/*         </div>*/
/* */
/*     {% endif %}*/
/* */
/* {% endblock %}*/
/* */
