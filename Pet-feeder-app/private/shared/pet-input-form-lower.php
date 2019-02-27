        <li>    
            <label for="health_considerations">Health considerations</label>
            <select id="health_considerations" name="Health Considerations">
                <option value="Sad lungs">Sad lugns</option>
                <option value="Unhappy kidneys">Unhappy kidneys</option>
                <option value="Less well working heart">Less well working heart</option>
                <option value="Other issues">Other issues</option>
            </select>
        </li>  
        <li> 
            <label for="age">Birthdate</label>  
            <input id="age" name="age" type="date">
            
        </li>
        <li>
            <label for="weight">Weight (in lb)</label>      
            <input id="weight" type="number" name="weight" min = "0" max = "250" step = "0.1">   
        </li>
                
        <li>        
            <label for="diet">Diet</label>
            <select name="diet" id="diet">
                <optgroup label="Raw">
                    <option value="raw_grain_free">Raw grain free</option>
                    <option value="raw_limited_diet">Raw limited diet</option>
                </optgroup>
                <optgroup label="Dry">
                    <option value="dry_grain_free">Dry grain free</option>
                    <option value="dry_limited_diet">Dry limited diet</option>
                </optgroup>
                <optgroup label="Wet">
                    <option value="wet_grain_free">Wet grain free</option>
                    <option value="wet_limited_diet">Wet limited diet</option>
                </optgroup>
                <optgroup label="Other">
                    <option value="other_diet">Other diet</option>
                </optgroup>
            </select>
        </li>    
            
        <li>    
            <label for="activity_level">Activity level</label>
            <select id="activity_level" name="activity_level">
                <option value="Active">Active</option>
                <option value="Normal">Normal</option>
                <option value="Less_active">Less active</option>
                <option value="Other_activity">Other level of activity</option>
            </select>
        </li>    
                    
        <li>        
            <fieldset>
                <legend>Gender</legend>
                <ul class="flex-inner">
                    <li>
                        <input type="radio" name="sex" value="male" id="male" checked><label
                            for="male">male</label>
                    </li>        
                            <!--<br>-->
                    <li> 
                        <input type="radio" name="sex" value="female" id="female"><label
                            for="female">female</label>
                    </li>         
                            <!--<br>-->
                </ul>
            </fieldset>
        </li>
            <!--<br>-->

        <li>
            <fieldset>
                <legend>Neutering</legend>
                <ul class="flex-inner">
                    <li>
                        <input type="radio" name="neutered" value="intact" id="red" checked><label
                            for="intact">intact</label>
                    </li>    
                            <!--<br>-->
                    <li>
                        <input type="radio" name="neutered" value="neutered" id="blue"><label
                            for="neutered">neutered</label>
                    </li> 
                        <!--<br>-->
                </ul>        
            </fieldset>
        </li>
            <!--<br>-->
        <li>
            <input type="submit" value="Submit">
        </li>
    </ul>
</form>