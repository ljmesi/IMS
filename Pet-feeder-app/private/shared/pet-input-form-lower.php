        <li>
            <label for="health_considerations">Health considerations</label>
            <select id="health_considerations" name="health_considerations">
                <option value="">Select</option>
                <option value="Pregnant 0-5wks">Pregnant 0-5 Weeks</option>
                <option value="Pregnant 5+wks)">Pregnant >5 Weeks</option>
                <option value="Kidney disease">Kidney disease</option>
                <option value="Nursing 1-3wks">Nursing 1-3 Weeks</option>
                <option value="Nursing 3+wks">Nursing >3 Weeks</option>
                <option value="Joint issues">Joint issues</option>
                <option value="Heart condition">Heart condition</option>
                <option value="Overweight">Overweight</option>
                <option value="Underweight">Underweight</option>
                <option value="Other">Other</option>
            </select>
        </li>
        <li>
            <label for="age">Birthdate</label>
            <input required id="age" name="age" type="date">

        </li>
        <li>
            <label for="weight">Weight (in lb)</label>
            <input required id="weight" type="number" name="weight" min = "0" max = "250" step = "0.1">
        </li>

        <li>
            <label for="diet">Diet</label>
            <select required name="diet" id="diet">
<<<<<<< HEAD
                    <option value="">Select</option>
                    <option value="raw">Raw</option>
                    <option value="raw grain free">Raw grain free</option>
                    <!--<option value="raw limited diet">Raw limited diet</option>-->
                    <!--<option value="dry">Dry (NOT FOR SENIOR)</option>-->
                    <option value="dry grain free">Dry grain free</option>
                    <!--<option value="dry limited diet">Dry limited diet</option>-->
                    <option value="wet">Wet</option>
                    <option value="wet grain free">Wet grain free</option>
                    <!--<option value="wet limited diet">Wet limited diet</option>-->
                    <!--<option value="other diet">Other diet</option>-->
=======
                <option value="">Select</option>
                <optgroup label="Raw">
                  <option value="raw">Raw</option>
                    <option value="raw_grain_free">Raw grain free</option>
                    <option value="raw_limited_diet">Raw limited diet</option>
                </optgroup>
                <optgroup label="Dry">
                  <option value="dry">Dry</option>
                    <option value="dry_grain_free">Dry grain free</option>
                    <option value="dry_limited_diet">Dry limited diet</option>
                </optgroup>
                <optgroup label="Wet">
                  <option value="wet">Wet</option>
                    <option value="wet_grain_free">Wet grain free</option>
                    <option value="wet_limited_diet">Wet limited diet</option>
                </optgroup>
                <optgroup label="Other">
                    <option value="other_diet">Other diet</option>
                </optgroup>
>>>>>>> 2030e5cd7d8d181bd7993b5e46843a993f2d6fb6
            </select>
        </li>

        <li>
            <label for="activity_level">Activity level</label>
            <select required id="activity_level" name="activity_level">
                <option value="">Select</option>
                <option value="Active">Active</option>
                <option value="Normal">Normal</option>
                <option value="Less_active">Less active</option>
                <!--<option value="Other_activity">Other level of activity</option>-->
            </select>
        </li>

        <li>
            <fieldset>
                <legend>Gender</legend>
                <ul class="flex-inner">
                    <li>
                        <input type="radio" name="sex" value="male" id="male" required><label
                            for="male">male</label>
                    </li>

                    <li>
                        <input type="radio" name="sex" value="female" id="female"><label
                            for="female">female</label>
                    </li>

                </ul>
            </fieldset>
        </li>


        <li>
            <fieldset>
                <legend>Neutering</legend>
                <ul class="flex-inner">
                    <li>
                        <input type="radio" name="neutered" value="intact" id="red" required><label
                            for="intact">intact</label>
                    </li>

                    <li>
                        <input type="radio" name="neutered" value="neutered" id="blue"><label
                            for="neutered">neutered</label>
                    </li>

                </ul>
            </fieldset>
        </li>

        <li>
            <input type="submit" name="submit" value="Submit">
        </li>
    </ul>
</form>
