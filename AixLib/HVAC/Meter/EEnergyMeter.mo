within AixLib.HVAC.Meter;
model EEnergyMeter

  Modelica.Blocks.Interfaces.RealInput p
    annotation (Placement(transformation(
        origin={-86,0},
        extent={{-14,-14},{14,14}},
        rotation=180)));
  Modelica.SIunits.Conversions.NonSIunits.Energy_kWh q_kwh;
  Modelica.SIunits.Energy q_joule(stateSelect=StateSelect.avoid, start = 0.0);
equation
  (der(q_joule)) = p;
  q_kwh = Modelica.SIunits.Conversions.to_kWh(q_joule);
  annotation (
    Icon(graphics={
        Rectangle(
          extent={{-40,66},{46,-62}},
          lineColor={0,0,255},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-20,38},{30,12}},
          lineColor={0,0,255},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(points={{4,24},{4,14},{4,16}}),
        Line(points={{14,24},{14,14},{14,16}}),
        Line(points={{24,24},{24,14},{24,16}}),
        Line(points={{-6,24},{-6,14},{-6,16}}),
        Line(points={{-14,24},{-14,14},{-14,16}}),
        Line(
          points={{-16,30},{28,30},{26,30}},
          thickness=0.5),
        Line(
          points={{0,30},{10,30},{10,30}},
          color={255,0,0},
          thickness=0.5),
        Text(
          extent={{-12,24},{-4,14}},
          lineColor={0,0,0},
          textString=
               "1"),
        Text(
          extent={{16,24},{24,14}},
          lineColor={0,0,0},
          textString=
               "1"),
        Text(
          extent={{6,24},{14,14}},
          lineColor={0,0,0},
          textString=
               "1"),
        Text(
          extent={{-4,24},{4,14}},
          lineColor={0,0,0},
          textString=
               "1")}),
    Documentation(info="<html>
Duplicate of  AixLib.Utilities.Sensors.EEnergyMeter - Will be removed
</html>"));
end EEnergyMeter;
