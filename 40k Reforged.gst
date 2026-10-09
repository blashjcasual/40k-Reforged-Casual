<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem name="40k Reforged" id="sys-c49b-9f87-36f1-c9b5" battleScribeVersion="2.03" revision="67" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema">
  <categoryEntries>
    <categoryEntry name="Transport" id="3239-2096-a612-ed8e" hidden="false"/>
    <categoryEntry name="Troops" id="b69b-5b51-faf1-2c40" hidden="false"/>
    <categoryEntry name="Configuration" id="9cd6-0442-3f35-6b52" hidden="false"/>
    <categoryEntry name="Leaders" id="2886-2afd-f65f-9d8e" hidden="false"/>
    <categoryEntry name="Support" id="ccc6-6202-853c-23e4" hidden="false"/>
    <categoryEntry name="Elites" id="4820-e2b5-9e00-bb68" hidden="false"/>
    <categoryEntry name="Infantry" id="205c-3072-067b-d808" hidden="false"/>
    <categoryEntry name="Vehicle" id="b239-6bd1-e7a0-0a02" hidden="false"/>
    <categoryEntry name="Monster" id="6537-7b2d-b2c8-6005" hidden="false"/>
    <categoryEntry name="Chaos" id="f809-9826-f58a-6b8d" hidden="false"/>
    <categoryEntry name="Rare" id="1738-1300-9dbb-c5be" hidden="false"/>
    <categoryEntry name="Countless Leader" id="1dc0-a947-c240-76bb" hidden="false"/>
  </categoryEntries>
  <costTypes>
    <costType name="pts" id="points" defaultCostLimit="0"/>
  </costTypes>
  <entryLinks>
    <entryLink name="Battle Size" id="416b-2ab1-795a-6a90" hidden="false" import="true" targetId="564e-fbc6-5266-3ea4" type="selectionEntry">
      <categoryLinks>
        <categoryLink name="Configuration" id="ca9b-32b3-f032-0e85" primary="true" targetId="9cd6-0442-3f35-6b52"/>
      </categoryLinks>
      <profiles>
        <profile name="Battle Size" id="aa23-ee88-116f-ce91" hidden="false" typeId="4349-812a-7a9b-9706" typeName="Rule">
          <characteristics>
            <characteristic name="Description:" typeId="6336-f7f6-0bef-e457">The size of players&apos; army lists are measured in points. Choose a size for the battle from below. Each player can select units for their army list totalling up to that size. Each size comes with list building restrictions.


800 Points: Rapid &amp; lethal - this is the size for quick action. 1-2 hours. You can only bring two leader units. For each unit in the Elites, Transports, and Support sections, you can only bring one of that unit.


1200 Points: Bold, tactical play is key at this size as you adapt to the dice and the battlefield. This is the recommended size for 1v1 games. 2-3 hours.
You can only bring three leader units. For each unit in the Elites, Transports, and Support sections, you can only bring two of that unit.


1600 Point: Strategy takes the spotlight as you battle to extend advantages over the long term. 3+ hours. You can only bring four leader units. For each unit in the Elites, Transports, and Support sections, you can only bring three of that unit.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </entryLink>
  </entryLinks>
  <forceEntries>
    <forceEntry name="Army Roster" id="0396-e1ff-fdad-e17b" hidden="false">
      <categoryLinks>
        <categoryLink name="Configuration" id="a8ad-6c7d-926d-0d05" hidden="false" targetId="9cd6-0442-3f35-6b52"/>
        <categoryLink name="Leaders" id="bce6-f6a1-9694-851b" hidden="false" targetId="2886-2afd-f65f-9d8e">
          <constraints>
            <constraint id="17e7-3cee-3114-9772" field="selections" includeChildSelections="false" scope="force" shared="true" type="max" value="1"/>
          </constraints>
          <modifiers>
            <modifier field="17e7-3cee-3114-9772" type="increment" value="1">
              <conditions>
                <condition childId="d62d-db22-4893-4bc0" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="17e7-3cee-3114-9772" type="increment" value="2">
              <conditions>
                <condition childId="baf8-997f-e323-a090" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
            <modifier field="17e7-3cee-3114-9772" type="increment" value="3">
              <conditions>
                <condition childId="4204-82d0-908c-a62a" field="selections" includeChildSelections="true" scope="force" shared="true" type="atLeast" value="1"/>
              </conditions>
            </modifier>
          </modifiers>
        </categoryLink>
        <categoryLink name="Countless Leader" id="d28c-91c2-d2af-2cb2" hidden="false" targetId="1dc0-a947-c240-76bb"/>
        <categoryLink name="Troops" id="3014-c4c1-a77d-5525" hidden="false" targetId="b69b-5b51-faf1-2c40"/>
        <categoryLink name="Elites" id="ece3-c768-4906-318a" hidden="false" targetId="4820-e2b5-9e00-bb68"/>
        <categoryLink name="Support" id="906c-7610-ea3b-35e4" hidden="false" targetId="ccc6-6202-853c-23e4"/>
        <categoryLink name="Transport" id="f485-ae17-bb93-cf81" hidden="false" targetId="3239-2096-a612-ed8e"/>
      </categoryLinks>
      <constraints>
        <constraint id="57b7-ac0e-5d06-9ddb" field="points" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="max" value="0"/>
      </constraints>
      <modifiers>
        <modifier field="57b7-ac0e-5d06-9ddb" type="set" value="800">
          <conditions>
            <condition childId="d62d-db22-4893-4bc0" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="atLeast" value="1"/>
          </conditions>
        </modifier>
        <modifier field="57b7-ac0e-5d06-9ddb" type="set" value="1200">
          <conditions>
            <condition childId="baf8-997f-e323-a090" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="atLeast" value="1"/>
          </conditions>
        </modifier>
        <modifier field="57b7-ac0e-5d06-9ddb" type="set" value="1600">
          <conditions>
            <condition childId="4204-82d0-908c-a62a" field="selections" includeChildForces="true" includeChildSelections="true" scope="roster" shared="true" type="atLeast" value="1"/>
          </conditions>
        </modifier>
      </modifiers>
    </forceEntry>
  </forceEntries>
  <profileTypes>
    <profileType name="Unit" id="a706-96eb-fcae-b696" hidden="false" kind="model">
      <characteristicTypes>
        <characteristicType name="T" id="a6ad-d820-8495-f5b0"/>
        <characteristicType name="Sv" id="9b7f-0dde-683f-6844"/>
        <characteristicType name="H" id="18e4-1bf9-a9b8-1e50"/>
        <characteristicType name="Rv" id="411f-3942-6dc0-7c06"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Weapon" id="2dff-53d0-6d25-8c59" hidden="false" kind="weapon">
      <characteristicTypes>
        <characteristicType name="Tp" id="6c1c-7d1d-c8b0-33ec"/>
        <characteristicType name="A" id="13c5-f234-c120-afc3"/>
        <characteristicType name="WS" id="459f-6890-e77f-b62f"/>
        <characteristicType name="S" id="571c-0471-2614-c57c"/>
        <characteristicType name="D" id="c2c0-3714-05e2-65a0"/>
        <characteristicType name="Abilities" id="d93f-70ee-72bc-5ef9"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Psychic Power" id="6406-cf2b-ec5b-c7e6" hidden="false" kind="spell">
      <characteristicTypes>
        <characteristicType name="Description" id="4b9e-dc73-b312-b42d" kind="longText"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Windfall of the Warp" id="266a-be4d-b9fa-94de" hidden="false" kind="spell">
      <characteristicTypes>
        <characteristicType name="Psychic Power" id="9060-973c-99e9-75b4" kind="longText"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Ability" id="e9b6-89e0-ffee-5662" hidden="false" kind="ability">
      <characteristicTypes>
        <characteristicType name="Description:" id="22b9-735d-71b1-6d7a" kind="longText"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Relics" id="9b56-9768-f88b-14ac" hidden="false" kind="spell">
      <characteristicTypes>
        <characteristicType name="Description" id="becf-f398-aed2-688b"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Leader" id="55da-e0a0-1fa3-2d1c" hidden="false" kind="rule">
      <characteristicTypes>
        <characteristicType name="Must Attach to" id="2c63-5e3f-9132-459d" kind="longText"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Rule" id="4349-812a-7a9b-9706" hidden="false" kind="rule">
      <characteristicTypes>
        <characteristicType name="Description:" id="6336-f7f6-0bef-e457" kind="longText"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <publications>
    <publication name="GitHub" id="f513-c3a0-5768-8dca" hidden="false" publisherUrl="https://github.com/blashjcasual/40k-Reforged-Casual.git"/>
  </publications>
  <sharedProfiles>
    <profile name="Teleport Homer" id="77ce-0080-b298-0daa" hidden="false" typeId="e9b6-89e0-ffee-5662" typeName="Ability">
      <characteristics>
        <characteristic name="Description:" typeId="22b9-735d-71b1-6d7a">After this unit is Activated in reserves, if it is not your second turn in a row, you may use ‘teleport homer’. If you do, select one of your infantry units without Teleport Homer and roll D6+2. Then, Deploy this unit wholly within X” of the selected unit where X is the result of that roll. Then, during this turn&apos;s Move step, do not make a Move Roll and this unit cannot Advance or Reposition.</characteristic>
      </characteristics>
    </profile>
    <profile name="Covering Fire" id="2415-711c-9ad6-01b3" hidden="false" typeId="e9b6-89e0-ffee-5662" typeName="Ability">
      <characteristics>
        <characteristic name="Description:" typeId="22b9-735d-71b1-6d7a">While there are one or more friendly infantry units within 8” of this unit, this unit’s ranged weapons gain Suppressive 1 (if that weapon already has Suppressive X, improve X by 1 instead).</characteristic>
      </characteristics>
    </profile>
    <profile name="Jet Pack" id="38d0-b778-7525-f239" hidden="false" typeId="e9b6-89e0-ffee-5662" typeName="Ability">
      <characteristics>
        <characteristic name="Description:" typeId="22b9-735d-71b1-6d7a">For each Move Roll made for this unit, add 1 D6 to that roll.</characteristic>
      </characteristics>
    </profile>
    <profile name="Jet Bike" id="672a-9374-f2ed-e8b2" hidden="false" typeId="e9b6-89e0-ffee-5662" typeName="Ability">
      <characteristics>
        <characteristic name="Description:" typeId="22b9-735d-71b1-6d7a">For each Advance Roll made for this unit, add 1 D6 to that roll.</characteristic>
      </characteristics>
    </profile>
    <profile name="Guarded" id="5f45-8a1e-dcb3-915f" hidden="false" typeId="e9b6-89e0-ffee-5662" typeName="Ability">
      <characteristics>
        <characteristic name="Description:" typeId="22b9-735d-71b1-6d7a">After a model in this unit is selected to suffer a wound, you may roll a D6. On a 5+, the Saving Throw for that attack always succeeds.</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
  <sharedRules>
    <rule name="Overcharge" id="e676-2d17-e4bf-f5e8" hidden="false">
      <description>After selecting targets for this weapon’s attacks, you may ‘overcharge’ them. If you do, the Damage of those attacks improves by D3 and Wound Rolls of 4+ are always successful. Hit Rolls and Wound Rolls for those attacks cannot be modified, rerolled or cause additional effects. After a Wound Roll fails, the unit of this weapon’s model loses Health equal to the D of that attack, starting with the model equipped with this weapon. Health lost this way cannot be Repaired/Healed.</description>
    </rule>
    <rule name="Fly" id="449b-2864-9b01-7476" hidden="false">
      <description>During a move, models in this unit may move over terrain pieces and units as if they were not there. For each terrain piece or unit moved over this way, reduce the maximum distance models can move by 2” for that move. If a unit with Fly and a unit without Fly are combined, that unit loses Fly.</description>
    </rule>
    <rule name="Psyker (X)" id="6ff7-e000-c4c9-fb18" hidden="false">
      <description>Units with Psyker X can cast psychic powers. X is the psyker tier of that unit. Each army has a list of six unique psychic powers listed in the Psychic Powers table on each army’s rules.


After a unit with Psyker is Activated, make a Psychic Test for that unit.


To make a Psychic Test, roll X D6 dice equal to the unit’s Psyker X. Keep track of the results.


After the Move step for an active unit with Psyker on the battlefield, it may Cast a psychic power.


To Cast a psychic power, select a psychic power from your army rules which matches any dice in the earlier Psychic Test. If that Psychic Test had two or more dice with the same result, you may instead select any psychic power.</description>
    </rule>
    <rule name="Open Deck" id="b8d6-4f70-5c6c-d053" hidden="false">
      <description>During the Attacks step for an active unit embarked in this unit, that embarked unit may select targets for its ranged attacks using the model of this unit as the attacking model.</description>
    </rule>
    <rule name="Walker" id="4100-8e8c-47a5-3a15" hidden="false">
      <description>This unit’s models may move over terrain 4” or less in height or units as if they were not there.</description>
    </rule>
    <rule name="Titan" id="8f09-c87f-c86c-8cfc" hidden="false">
      <description>The first time each battle round this unit Activates, it does not lose ready. For each Advance Roll made for this unit, roll 1 less dice for that roll.</description>
    </rule>
    <rule name="Forward Deploy" id="b433-60cc-2ed2-658f" hidden="false">
      <description>After this unit is Activated in reserves, roll 2D6. Then, you may Deploy this unit wholly within X” of your Deployment Zone where X is equal to that roll.</description>
    </rule>
    <rule name="Unstoppable" id="9726-164b-d2c0-a58f" hidden="false">
      <description>For each Resolve Test made for this unit, reroll a failed result for that Resolve Test.</description>
    </rule>
    <rule name="Transport" id="d78d-24c6-e7a9-e94f" hidden="false">
      <description>After you deploy a unit with Transport, you may select one of your infantry units in reserves to be ‘embarked’ within that unit.


Embarked units are not on the battlefield (they’re never visible, cannot be within range for any abilities, can’t capture objectives, etc).


After an embarked unit’s Move step begins, that unit may Disembark. To Disembark, Deploy the embarked unit wholly within 4” of the unit it&apos;s embarked within, in unit coherency. If it cannot meet these conditions, remove models from the unit until it can.


After a unit with Transport with an embarked unit is destroyed, before removing it from the battlefield, the embarked unit must Disembark. Then, make an Evacuate Roll for that unit. To make an Evacuate Roll for a unit, roll a D6 and apply the result on the following table:


1 or 2: Reeling: That unit is no longer ready, and gains Suppressed 6.
3 or 4: Pelted by Debris: That unit gains Suppressed 6.
5 or 6: Escaped: No effect.</description>
    </rule>
    <rule name="Heal/Repair (X)" id="02c8-1ec5-cdab-2572" hidden="false">
      <description>To Heal X or Repair X, for each X, if any model in the unit has fewer H than it started with, improve the H of one of those models by 1. If no models have fewer H than they started with and the unit is missing one or more models, instead add 1 missing model to this unit, in coherency, with 1 H. If a model cannot be placed in coherency, do not add it.</description>
    </rule>
    <rule name="Ignore Cover" id="c88b-5cb0-aa9d-b742" hidden="false">
      <description>Saving Throws for this weapon’s attacks cannot benefit from cover.</description>
    </rule>
    <rule name="Indirect" id="4de2-ca68-9af9-1b10" hidden="false">
      <description>This weapon does not need the target to be visible. However, when the target is not visible, this weapon has a -1 penalty to its Hit Rolls.</description>
    </rule>
    <rule name="Isolate" id="db97-d77e-4392-6f10" hidden="false">
      <description>For each attack made for this weapon, if the target unit is infantry and there are no other enemy units within 4” of the target unit, add 1 to the Wound Roll of that attack.</description>
    </rule>
    <rule name="Strike or Sweep (X)" id="2757-6563-cdb2-3456" hidden="false">
      <description>Each time you make attacks with this weapon, use only one of either weapon with Strike or Sweep.</description>
    </rule>
    <rule name="Barrage" id="9cfc-06e3-74c6-ad83" hidden="false">
      <description>After selecting the target for this weapon&apos;s attacks, roll 2D6. Then select all other enemy units within X” of the selected target, where X is the result of that roll. Also make attacks for this weapon targeting each of the selected units.</description>
    </rule>
    <rule name="Suppressive (X)" id="aed3-e154-8fa2-5378" hidden="false">
      <description>For each attack made for this weapon, after that attack wounds, the target unit suffers X Suppression.

When a unit suffers Suppression, it must make a number of Resolve Tests equal to the value of that Suppression. For each failed Resolve Test, that unit gains Suppressed.

To make a Resolve Test, roll a D6. If the result is equal to or greater than the unit’s Resolve (Rv) characteristic, the roll is successful.

Suppressed X: For each Move Roll made for this unit, worsen that roll by X to a minimum of 1.

If this unit is infantry, each time it selects targets for attacks, its controller must select a number of non-leader infantry models equal to X. You cannot select targets for those models&apos; weapons this turn.

If this unit is infantry, after its End step, it loses Suppressed.

If this unit is a vehicle or monster, after its Move step, you may skip its Attacks step. If you do, it loses Suppressed.

If this unit is a vehicle or monster, after its Attacks step, it suffers twice X SW and loses Suppressed.

If this unit has Psyker, after this unit makes a Psychic Test, if any result on a dice in that Psychic Test was X, this unit suffers X SW.

Each time this unit gains Suppressed while it already has Suppressed, increase X by 1, to a maximum of 6 (you can use a d6 to keep track)</description>
    </rule>
    <rule name="Rearm" id="0c06-9eed-2a45-b772" hidden="false">
      <description>After making attacks for this weapon, you may not make attacks for it until you ‘reload’. To reload, the unit with this weapon must end its turn within your deployment zone during a battle round in which you didn’t make attacks for this weapon.</description>
    </rule>
    <rule name="Shuriken" id="c503-366d-25f8-01c0" hidden="false">
      <description>For each attack made for this weapon, a Hit Roll of 6 for that attack causes an additional hit. If the target for that attack had Fatal Thread, that additional hit always wounds.</description>
    </rule>
    <rule name="Pierce" id="f61d-729a-ad35-ab97" hidden="false">
      <description>After a target is selected for this weapon, if that target&apos;s T is equal to or lower than this weapon&apos;s S, improve this weapon&apos;s S to 7 this turn.</description>
    </rule>
    <rule name="Shred" id="4a04-e9da-d7b5-e035" hidden="false">
      <description>For each attack made for this weapon, a successful Wound Roll for that attack causes an additional wound.</description>
    </rule>
    <rule name="Blast (X)" id="308a-e96e-90f7-855e" hidden="false">
      <description>For each attack made for this weapon, a successful Hit Roll for that attack causes X hits instead of 1 hit</description>
    </rule>
    <rule name="Heavy Armour" id="ec2c-77fd-05f2-a794" hidden="false">
      <description>This unit’s T is improved by 1. This unit cannot be in cover for enemy attacks. For each SW this unit suffers, it gains Resilient 5+ for that attack or if it already has Resilient, instead add 1 to resilient rolls for that attack.</description>
      <modifiers>
        <modifier affects="self.entries.recursive.profiles.Unit" field="a6ad-d820-8495-f5b0" scope="unit-self" type="increment" value="1"/>
      </modifiers>
    </rule>
    <rule name="Fatal Thread" id="209e-12d3-d64c-9005" hidden="false">
      <description>For each attack made by an Aeldari Craftworlds unit that targets this unit, a Hit Roll of 6 always wounds.</description>
    </rule>
    <rule name="Resilient (X)" id="253c-c1fa-d29d-d21e" hidden="false">
      <description>For each attack that targets this unit, after a failed Saving Throw for that attack, make a Resilient roll. To make a Resilient roll, roll a D6. If the result equals or exceeds X, that attack fails.</description>
    </rule>
    <rule name="Daemonic" id="3b9e-8b58-9bed-fb98" hidden="false">
      <description>For each attack that targets this unit, a Wound Roll of 4 or lower causes that attack to fail. A Wound Roll of 5 or 6 causes that attack to succeed. Additionally, for each SW this unit suffers, this unit gains Resilient 4+ for that attack</description>
    </rule>
    <rule name="Breach" id="265b-df47-6a5e-4d1c" hidden="false">
      <description>For each attack made for this weapon, each hit for that attack counts as 2 hits instead of 1 hit. Additionally, for each attack made for this weapon, add 1 to the Wound Roll of that attack.</description>
    </rule>
    <rule name="Velocity" id="5e3c-8b11-830c-6d2a" hidden="false">
      <description>This weapon can target enemy units within 32” of the model equipped with it. After you make a Move Roll during your Move step for the unit with this weapon, each enemy unit currently within X” of that unit gains Too Close (Velocity) until the End step, where X is that Move Roll result plus 12.


Too Close (Velocity): This unit is an ineligible target for weapons with Velocity.</description>
    </rule>
    <rule name="Hunt" id="0f3a-7a60-a486-b805" hidden="false">
      <description>For each attack made for this weapon that targets an infantry unit, if that isn&apos;t in cover for that attack, add 1 to the Wound Roll of that attack (unless the target has an ability which says it cannot be in cover for attacks).</description>
    </rule>
    <rule name="Haywire" id="0c93-fe53-7091-88d0" hidden="false">
      <description>For each attack made for this weapon that targets a vehicle unit, the Strength of that attack is improved to 6. If the Wound Roll of that is successful, the target unit gains Stunned.

Stunned: After this unit Activates, if it has Suppressed X, roll a D6. If the result of that roll is less than the X of Suppressed X, this unit becomes ready and skip this turns’ Move and Attacks steps.</description>
    </rule>
    <rule name="Critical Wounds X+" id="c751-8dab-2486-9a1b" hidden="false">
      <description>For each attack made for this weapon, each Wound Roll of X+ for that attack causes an additional wound.</description>
    </rule>
    <rule name="Critical Hits X+" id="fff4-3f9d-5d2d-4cf9" hidden="false">
      <description>For each attack made for this weapon, a Hit Roll of X+ for that attack causes an additional hit.</description>
    </rule>
    <rule name="Shield X+" id="a04b-6862-277b-8580" hidden="false">
      <description>After the model with this weapon is selected to suffer a wound, roll a D6. On a 5+, the Saving Throw for that wound always succeeds.</description>
    </rule>
  </sharedRules>
  <sharedSelectionEntries>
    <selectionEntry name="Battle Size" id="564e-fbc6-5266-3ea4" collective="false" hidden="false" import="true" type="upgrade">
      <categoryLinks>
        <categoryLink name="Configuration" id="d464-ac4f-3093-5bbf" primary="false" targetId="9cd6-0442-3f35-6b52"/>
      </categoryLinks>
      <constraints>
        <constraint id="d907-5a90-75f2-feec" field="selections" includeChildForces="true" includeChildSelections="true" percentValue="false" scope="roster" shared="true" type="max" value="1"/>
        <constraint id="6b1c-4cb6-1e16-5ada" field="selections" includeChildForces="true" includeChildSelections="true" percentValue="false" scope="roster" shared="true" type="min" value="1"/>
      </constraints>
      <costs>
        <cost name="pts" typeId="51b2-306e-1021-d207" value="0"/>
      </costs>
      <selectionEntryGroups>
        <selectionEntryGroup name="Battle Size" id="b960-4789-a3a6-59cb" collective="false" defaultSelectionEntryId="baf8-997f-e323-a090" hidden="false" import="true">
          <constraints>
            <constraint id="132a-318-b78a-7afb" field="selections" includeChildForces="false" includeChildSelections="false" percentValue="false" scope="parent" shared="true" type="min" value="1"/>
            <constraint id="dea4-90c8-6d86-3a01" field="selections" includeChildForces="false" includeChildSelections="false" percentValue="false" scope="parent" shared="true" type="max" value="1"/>
          </constraints>
          <selectionEntries>
            <selectionEntry name="1. 800 pts" id="d62d-db22-4893-4bc0" collective="false" hidden="false" import="true" type="upgrade">
              <costs>
                <cost name="pts" typeId="51b2-306e-1021-d207" value="0"/>
              </costs>
            </selectionEntry>
            <selectionEntry name="2. 1200 pts" id="baf8-997f-e323-a090" collective="false" hidden="false" import="true" type="upgrade">
              <costs>
                <cost name="pts" typeId="51b2-306e-1021-d207" value="0"/>
              </costs>
            </selectionEntry>
            <selectionEntry name="3. 1600 pts" id="4204-82d0-908c-a62a" collective="false" hidden="false" import="true" type="upgrade">
              <costs>
                <cost name="pts" typeId="51b2-306e-1021-d207" value="0"/>
              </costs>
            </selectionEntry>
          </selectionEntries>
        </selectionEntryGroup>
      </selectionEntryGroups>
    </selectionEntry>
    <selectionEntry name="Frag Grenade" id="a1b6-2895-8960-4e57" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Rearm" id="79f0-68e7-00a6-83ee" hidden="false" targetId="0c06-9eed-2a45-b772" type="rule"/>
        <infoLink name="Blast (X)" id="4c3e-854a-4e0b-96d3" hidden="false" targetId="308a-e96e-90f7-855e" type="rule"/>
        <infoLink name="Indirect" id="4b39-975d-1afc-7737" hidden="false" targetId="4de2-ca68-9af9-1b10" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Frag Grenade" id="d0b4-4c54-e9c5-4e3c" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">1</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">2</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Rearm, Indirect, Blast 5</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Melta Bomb" id="a308-d575-5b0a-5782" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Rearm" id="c3c8-2bba-f450-4979" hidden="false" targetId="0c06-9eed-2a45-b772" type="rule"/>
        <infoLink name="Pierce" id="65ad-bcba-5072-6f96" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
        <infoLink name="Indirect" id="72a5-733d-3a17-ee42" hidden="false" targetId="4de2-ca68-9af9-1b10" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Melta Bomb" id="d783-a406-6b62-8ca8" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">1</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">3</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Rearm, Indirect, Pierce, Shred</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Krak Grenade" id="e06d-dcbe-f391-392b" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Rearm" id="e82f-8e0a-299c-8b05" hidden="false" targetId="0c06-9eed-2a45-b772" type="rule"/>
        <infoLink name="Indirect" id="ba67-7204-a161-5839" hidden="false" targetId="4de2-ca68-9af9-1b10" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Krak Grenade" id="2f58-917f-e392-5c19" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">1</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2D3</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Rearm, Indirect</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Hunter-Killer Missile" id="eda8-2347-1928-a28e" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Velocity" id="b135-e658-b305-b6a8" hidden="false" targetId="5e3c-8b11-830c-6d2a" type="rule"/>
        <infoLink name="Rearm" id="c1c5-bedc-fd24-1eeb" hidden="false" targetId="0c06-9eed-2a45-b772" type="rule"/>
        <infoLink name="Pierce" id="2184-e7ca-166a-0ef4" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Hunter-Killer Missile" id="9a2b-01ac-19e1-8c5f" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Hv</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">1</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">2+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">3</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Rearm, Velocity, Pierce</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Dozer Blade" id="73da-e53b-4390-b808" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Walker" id="db79-1e6c-0728-38d0" hidden="false" targetId="4100-8e8c-47a5-3a15" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Dozer Blade" id="41f3-3261-ccbc-05a0" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">ML</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">3</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">This unit gains Walker.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Heavy Bolter" id="82a1-b562-e748-d5ad" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Heavy Bolter" id="075a-7042-381d-3c14" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Hv</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">3</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9"/>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Heavy Flamer" id="5c44-7d31-605d-4b6f" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Blast (X)" id="c243-7453-e273-d71b" hidden="false" targetId="308a-e96e-90f7-855e" type="rule"/>
        <infoLink name="Ignore Cover" id="57f2-e08e-9c53-9937" hidden="false" targetId="c88b-5cb0-aa9d-b742" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Heavy Flamer" id="ea8d-c350-06be-ff13" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">4+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">2</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Blast 3, Ignore Cover</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Smoke Launchers" id="d653-3fc2-d577-6295" hidden="false" import="true" type="upgrade">
      <constraints>
        <constraint id="360a-f40f-1386-1cfc" field="selections" includeChildSelections="false" scope="parent" shared="true" type="max" value="1"/>
      </constraints>
      <profiles>
        <profile name="Smoke Launchers" id="05b6-0208-cd8f-0a67" hidden="false" typeId="e9b6-89e0-ffee-5662" typeName="Ability">
          <characteristics>
            <characteristic name="Description:" typeId="22b9-735d-71b1-6d7a">After this unit is targeted by one or more ranged attacks, you may roll a D6. On a 3+, each ranged attack targeting this unit suffers a -1 penalty to its Hit Roll and you cannot roll for this ability again until the next battle round.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Multi-Melta" id="8cdb-d231-cc0f-a98f" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Shred" id="6e10-493a-5feb-948b" hidden="false" targetId="4a04-e9da-d7b5-e035" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Multi-Melta" id="18da-3b01-0f89-91ae" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">1</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">3</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Melt 8&quot;, Shred</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Autocannon" id="a636-c9c9-ad6d-6db0" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Suppressive (X)" id="312a-9a55-63b9-e2fc" hidden="false" targetId="aed3-e154-8fa2-5378" type="rule">
          <modifiers>
            <modifier field="name" type="set" value="Suppressive (2)"/>
          </modifiers>
        </infoLink>
      </infoLinks>
      <profiles>
        <profile name="Autocannon" id="8569-dde5-8e37-1b1c" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Hv</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Suppressive 2</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Haywire Grenade" id="70d9-3670-51f4-ae16" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Haywire" id="6db5-e03b-a8f8-2641" hidden="false" targetId="0c93-fe53-7091-88d0" type="rule"/>
        <infoLink name="Suppressive (X)" id="e3fa-9ad1-c075-f35a" hidden="false" targetId="aed3-e154-8fa2-5378" type="rule">
          <modifiers>
            <modifier field="name" type="set" value="Suppressive (2)"/>
          </modifiers>
        </infoLink>
        <infoLink name="Indirect" id="2512-df36-d64f-600d" hidden="false" targetId="4de2-ca68-9af9-1b10" type="rule"/>
        <infoLink name="Rearm" id="4e2a-7bca-e454-50ff" hidden="false" targetId="0c06-9eed-2a45-b772" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Haywire Grenade" id="864a-e562-3bea-a12e" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">2</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">3D3</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">One Shot, Indirect, Haywire, Suppressive 2</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Power Weapon" id="dfed-4c14-cafd-626d" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Pierce" id="f24c-4852-082e-e409" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Power Weapon" id="0235-7859-850a-582a" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">ML</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Pierce</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Flamer" id="4cf9-1758-d00d-29c4" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Ignore Cover" id="690a-dd40-7161-4317" hidden="false" targetId="c88b-5cb0-aa9d-b742" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Flamer" id="deca-c83f-8351-473a" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">4+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">2</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Ignore Cover</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Meltagun" id="4260-66c2-4887-4117" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Shred" id="4861-6ff8-d7f1-1b2e" hidden="false" targetId="4a04-e9da-d7b5-e035" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Meltagun" id="7371-3697-0157-52ec" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">1</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">3</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Melt 4&quot;, Shred</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Plasma Pistol" id="6894-2cf4-78df-13e8" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Pierce" id="e094-db9c-9da7-0cb1" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
        <infoLink name="Overcharge" id="3925-fb3f-4cfe-caf4" hidden="false" targetId="e676-2d17-e4bf-f5e8" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Plasma Pistol" id="44c1-61d6-8602-fbf2" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Overcharge, Pierce</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Power Axe" id="2d40-0672-6885-33af" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Pierce" id="610b-6af1-857e-13cc" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Power Axe" id="6aff-213e-cc6e-d0f2" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">ML</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Pierce</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Power Fist" id="e9ab-47d0-5cce-0c1d" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Breach" id="0ac6-d8d6-bf8f-f404" hidden="false" targetId="265b-df47-6a5e-4d1c" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Power Fist" id="4a54-aac0-6f08-f47e" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">ML</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2D3+1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Breach</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Plasma Gun" id="af5b-b208-be5c-ba5b" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Pierce" id="16f1-ab0d-dae7-bfcd" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
        <infoLink name="Overcharge" id="926e-629a-3753-89d0" hidden="false" targetId="e676-2d17-e4bf-f5e8" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Plasma Gun" id="a991-c60f-3c00-7d5b" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Pierce, Overcharge</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Plasma Cannon" id="597d-3cc2-8209-d3d1" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Pierce" id="e98a-2c0a-0547-06c7" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
        <infoLink name="Overcharge" id="123c-5289-1cfa-44a4" hidden="false" targetId="e676-2d17-e4bf-f5e8" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Plasma Cannon" id="c516-224c-dfa7-2098" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Hv</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Pierce, Overcharge</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Bolt Pistol" id="dae5-9fbf-bdd8-7f79" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Bolt Pistol" id="3836-d543-cd3b-6b48" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">3</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9"/>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Lascannon" id="54fc-ac08-3927-692d" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Breach" id="fe6f-00b1-551e-4372" hidden="false" targetId="265b-df47-6a5e-4d1c" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Lascannon" id="15d4-3541-8fca-df77" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Hv</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">4</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Breach</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Chainsword" id="d7bf-1f8b-4dd2-edfb" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Shred" id="7c7c-fd7b-04d9-bbdf" hidden="false" targetId="4a04-e9da-d7b5-e035" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Chainsword" id="78ae-ed81-7007-5f71" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">ML</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">2</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Shred</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Storm Bolter" id="d215-60bd-f49d-295e" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Storm Bolter" id="669d-3fa9-3a28-6abd" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">3</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9"/>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Boltgun" id="7c03-84c7-a561-dfa9" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Boltgun" id="9ea0-3ecc-5045-fe66" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">3</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9"/>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Autogun/Autopistol" id="64a8-21ad-840f-8b88" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Autogun/Autopistol" id="b0bf-3326-8f40-71bb" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">1</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9"/>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Flamer Pistol" id="6ba7-fe2b-ac9d-446c" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Ignore Cover" id="aa6e-c680-81e8-1779" hidden="false" targetId="c88b-5cb0-aa9d-b742" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Flamer Pistol" id="604d-fac1-585a-0431" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">4+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">2</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Ignore Cover</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Shuriken Pistol" id="4f77-9c86-d981-5252" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Shuriken" id="5f6f-182d-6dcc-e9c6" hidden="false" targetId="c503-366d-25f8-01c0" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Shuriken Pistol" id="647e-3c95-9b52-bc3a" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">2</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Shuriken</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Shuriken Cannon" id="3de8-f8bb-0dc7-7dc8" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Shuriken" id="622f-0a76-56fd-d6c6" hidden="false" targetId="c503-366d-25f8-01c0" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Shuriken Cannon" id="211a-044e-544c-610a" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Hv</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">3</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Shuriken</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Fusion Pistol" id="2a6b-b034-37f1-59fa" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Pierce" id="8bf0-1e59-ee46-0992" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Fusion Pistol" id="3ae2-af28-5285-f2e2" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">D3+3</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Pierce</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Firepike" id="12b0-4131-6369-ce22" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Pierce" id="96a2-7b7d-f294-6627" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Firepike" id="142e-ff96-c578-d832" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">1</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">D3+4</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Pierce</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Plasma Grenade" id="16c6-5a66-c200-152f" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Rearm" id="c151-b4dc-feed-8b27" hidden="false" targetId="0c06-9eed-2a45-b772" type="rule"/>
        <infoLink name="Suppressive (X)" id="5e0f-0369-fdb1-32e0" hidden="false" targetId="aed3-e154-8fa2-5378" type="rule"/>
        <infoLink name="Indirect" id="f41f-5515-18eb-133f" hidden="false" targetId="4de2-ca68-9af9-1b10" type="rule"/>
        <infoLink name="Blast (X)" id="9c15-faba-60ca-4178" hidden="false" targetId="308a-e96e-90f7-855e" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Plasma Grenade" id="65a1-1cab-62d6-adc9" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">1</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">2</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Rearm, Indirect, Blast 3, Suppressive 1</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Plasma Blaster" id="f4e1-5e30-78a3-2852" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Overcharge" id="bf91-2f4b-881f-eb6b" hidden="false" targetId="e676-2d17-e4bf-f5e8" type="rule"/>
        <infoLink name="Pierce" id="e5fb-6d02-2363-114d" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Plasma Blaster" id="0284-277e-7a8b-a855" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">4</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Overcharge, Pierce</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Grav-Gun" id="f657-b5e1-7a66-d017" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Grav-Gun" id="2e68-61ee-e3ff-dfb2" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">-</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">For each attack made for this weapon, that attack’s S is 1 higher to the target’s Toughness.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Grav Pistol" id="aeca-017c-7dcb-cf9e" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Grav Pistol" id="7c64-b31a-d4d2-f3cc" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">-</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">For each attack made for this weapon, that attack’s S is 1 higher to the target’s Toughness.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Grav-Cannon" id="4811-c9c2-5c16-0a39" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Grav-Cannon" id="a8ad-069d-d915-9742" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Hv</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">-</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">For each attack made for this weapon, that attack’s S is 1 higher to the target’s Toughness.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Combi-Plasma" id="6a92-d812-47fc-a089" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Overcharge" id="10a5-41a6-08fd-4c08" hidden="false" targetId="e676-2d17-e4bf-f5e8" type="rule"/>
        <infoLink name="Pierce" id="7a33-506d-2314-e589" hidden="false" targetId="f61d-729a-ad35-ab97" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Combi-Plasma" id="0204-c238-5233-95e9" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Overcharge, Pierce</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Combi-Melta" id="f770-b114-9df6-969c" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Shred" id="4896-ea26-e5b4-fcab" hidden="false" targetId="4a04-e9da-d7b5-e035" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Combi-Melta" id="8e4e-9bf7-c1bd-5251" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">1</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">5</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">3</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Melt 4&quot;, Shred</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Combi-Flamer" id="725d-6955-5aee-023b" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Ignore Cover" id="6984-5176-1794-c61c" hidden="false" targetId="c88b-5cb0-aa9d-b742" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Combi-Flamer" id="170b-12aa-b9a4-ea0a" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">CQ</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">4+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">2</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Ignore Cover</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Battle Cannon" id="578d-f0a6-d3fa-a4f6" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Battle Cannon" id="a38f-a3d1-7be4-8ab3" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Hv</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">8</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">4</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9"/>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Heavy Stubber" id="4b7a-633d-1e19-061d" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Suppressive (X)" id="0518-9ff2-dbf9-c631" hidden="false" targetId="aed3-e154-8fa2-5378" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Heavy Stubber" id="03cb-fed2-48f7-2679" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Hv</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Suppressive (1)</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Chainfist" id="ad98-4b41-0c98-aa4e" hidden="false" import="true" type="upgrade">
      <infoLinks>
        <infoLink name="Shred" id="9fdd-8dcb-7c5e-9052" hidden="false" targetId="4a04-e9da-d7b5-e035" type="rule"/>
      </infoLinks>
      <profiles>
        <profile name="Chainfist" id="5014-70e9-281f-1db2" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">ML</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f"/>
            <characteristic name="S" typeId="571c-0471-2614-c57c">4</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">4</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">Shred</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Combi-Bolter" id="81e6-a62a-eca2-22e2" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Combi-Bolter" id="6dc1-6136-7e52-83ea" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3">9</characteristic>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">2+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">3</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">1</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9"/>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
    <selectionEntry name="Combi-Grav" id="bcad-e810-d021-aa20" hidden="false" import="true" type="upgrade">
      <profiles>
        <profile name="Combi-Grav" id="0864-4206-a267-14b2" hidden="false" typeId="2dff-53d0-6d25-8c59" typeName="Weapon">
          <characteristics>
            <characteristic name="Tp" typeId="6c1c-7d1d-c8b0-33ec">Aslt</characteristic>
            <characteristic name="A" typeId="13c5-f234-c120-afc3"/>
            <characteristic name="WS" typeId="459f-6890-e77f-b62f">3+</characteristic>
            <characteristic name="S" typeId="571c-0471-2614-c57c">-</characteristic>
            <characteristic name="D" typeId="c2c0-3714-05e2-65a0">2</characteristic>
            <characteristic name="Abilities" typeId="d93f-70ee-72bc-5ef9">For each attack made for this weapon, that attack’s S is 1 higher to the target’s Toughness.</characteristic>
          </characteristics>
        </profile>
      </profiles>
    </selectionEntry>
  </sharedSelectionEntries>
</gameSystem>
