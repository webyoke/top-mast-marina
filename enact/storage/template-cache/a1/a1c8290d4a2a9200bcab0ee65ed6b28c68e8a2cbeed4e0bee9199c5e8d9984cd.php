<?php

/* index.html */
class __TwigTemplate_fcbf497254391098d2847a59019d44a360be8c5a4c0f1297907865bb16a3de5f extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("_layout.html", "index.html", 1);
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
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_content($context, array $blocks = array())
    {
        // line 4
        echo "
    <div class='content row homepage'>
        ";
        // line 6
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute((isset($context["entry"]) ? $context["entry"] : null), "contentBlocks", array()), "matrixFieldHandle", array()));
        foreach ($context['_seq'] as $context["_key"] => $context["block"]) {
            // line 7
            echo "
            ";
            // line 8
            if (($context["block"] == "heading")) {
                // line 9
                echo "
                <h1 class='title text-";
                // line 10
                echo $this->getAttribute($context["block"], "position", array());
                echo "'>";
                echo $this->getAttribute($context["block"], "theHeading", array());
                echo "</h1>

            ";
            } elseif ((            // line 12
$context["block"] == "video")) {
                // line 13
                echo "
                ";
                // line 14
                echo $this->getAttribute($this->getAttribute($context["block"], "aVideo", array()), "fullWidth", array());
                echo "

            ";
            } elseif ((            // line 16
$context["block"] == "contentImage")) {
                // line 17
                echo "
                <div class='row' style='color : ";
                // line 18
                echo $this->getAttribute($context["block"], "fontColor", array());
                echo "; background-color : ";
                echo $this->getAttribute($context["block"], "backgroundColor", array());
                echo "; margin: 40px 0px;'>
                    <div style='max-width:200px; float : ";
                // line 19
                echo $this->getAttribute($context["block"], "imagePosition", array());
                echo ";'>
                        ";
                // line 20
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($this->getAttribute($this->getAttribute($context["block"], "images", array()), "assetFieldHandle", array()));
                foreach ($context['_seq'] as $context["_key"] => $context["image"]) {
                    // line 21
                    echo "                            ";
                    echo $context["image"];
                    echo "
                        ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['image'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 23
                echo "                    </div>

                    <div>
                        ";
                // line 26
                echo $this->getAttribute($context["block"], "content", array());
                echo "
                    </div>

                </div>

            ";
            } elseif ((            // line 31
$context["block"] == "quote")) {
                // line 32
                echo "
                <div class='quote'>
                    ";
                // line 34
                echo $this->getAttribute($context["block"], "theQuote", array());
                echo "
                </div>

            ";
            }
            // line 38
            echo "
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['block'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 40
        echo "    </div>


";
    }

    public function getTemplateName()
    {
        return "index.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  125 => 40,  118 => 38,  111 => 34,  107 => 32,  105 => 31,  97 => 26,  92 => 23,  83 => 21,  79 => 20,  75 => 19,  69 => 18,  66 => 17,  64 => 16,  59 => 14,  56 => 13,  54 => 12,  47 => 10,  44 => 9,  42 => 8,  39 => 7,  35 => 6,  31 => 4,  28 => 3,  11 => 1,);
    }
}
/* {% extends "_layout.html" %}*/
/* */
/* {% block content %}*/
/* */
/*     <div class='content row homepage'>*/
/*         {% for block in entry.contentBlocks.matrixFieldHandle %}*/
/* */
/*             {% if block == 'heading' %}*/
/* */
/*                 <h1 class='title text-{{ block.position }}'>{{ block.theHeading }}</h1>*/
/* */
/*             {% elseif block == 'video' %}*/
/* */
/*                 {{ block.aVideo.fullWidth }}*/
/* */
/*             {% elseif block == 'contentImage' %}*/
/* */
/*                 <div class='row' style='color : {{ block.fontColor }}; background-color : {{ block.backgroundColor }}; margin: 40px 0px;'>*/
/*                     <div style='max-width:200px; float : {{ block.imagePosition }};'>*/
/*                         {% for image in block.images.assetFieldHandle %}*/
/*                             {{ image }}*/
/*                         {% endfor %}*/
/*                     </div>*/
/* */
/*                     <div>*/
/*                         {{ block.content }}*/
/*                     </div>*/
/* */
/*                 </div>*/
/* */
/*             {% elseif block == 'quote' %}*/
/* */
/*                 <div class='quote'>*/
/*                     {{ block.theQuote }}*/
/*                 </div>*/
/* */
/*             {% endif %}*/
/* */
/*         {% endfor %}*/
/*     </div>*/
/* */
/* */
/* {% endblock %}*/
/* */
