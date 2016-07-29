<?php

/* @enact/widget/updates.html */
class __TwigTemplate_ce74e8269047fb71cedf9262ffcf38219eb41fca82d3c58c36013915d74688bd extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<h6>Updates</h6>
";
        // line 2
        if (((isset($context["updates"]) ? $context["updates"] : null) != 0)) {
            // line 3
            echo "    <p><a href='";
            echo enact_cpSlug("system-update/");
            echo "'>";
            echo (isset($context["updates"]) ? $context["updates"] : null);
            echo " available!</a></p>
";
        } else {
            // line 5
            echo "    <p>Enact is up to date!</p>
";
        }
    }

    public function getTemplateName()
    {
        return "@enact/widget/updates.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  32 => 5,  24 => 3,  22 => 2,  19 => 1,);
    }
}
/* <h6>Updates</h6>*/
/* {% if updates != 0 %}*/
/*     <p><a href='{{ cpSlug('system-update/') }}'>{{ updates }} available!</a></p>*/
/* {% else %}*/
/*     <p>Enact is up to date!</p>*/
/* {% endif %}*/
/* */
