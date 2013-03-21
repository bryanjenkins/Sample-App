class FormsController < ApplicationController

  def index
    @patient = Patient.find(params[:patient_id])
    @forms = @patient.forms.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @form = Form.find(params[:id])
    @patient = Patient.find(@form.patient_id)
  end

  def new
    @form = Form.new()
    @form.medical_history = MedicalHistory.new
    @form.family_history = FamilyHistory.new
    @form.symptom = Symptom.new
    @patient = Patient.find_by_id(params[:patient_id])
  end

  def create
    @patient = Patient.find_by_id(params[:patient_id])
    @form = @patient.forms.build(params[:form])
    if @form.save 
      flash[:success] = "Record Saved Successfully!"
      redirect_to patients_path
    else
      render patients_path
    end
  end

  def print
    patient = Patient.find(params[:patient_id])
    form = Form.find_by_id(params[:id])
    mh = form.medical_history
    fh = form.family_history
    sym = form.symptom 

    pdf = PDF::Stamper.new("pdfs/pq.pdf") 
    
    pdf.text :patient_name,    patient.name
    pdf.text :allergies, form.allergies

    #Family History
    pdf.checkbox :heart_disease if fh.heart_disease == true
    pdf.checkbox :lung_disease if fh.lung_disease == true
    pdf.checkbox :kidney_disease if fh.kidney_disease == true
    pdf.checkbox :rheumatoid_arthritis if fh.rheumatoid_arthritis == true
    pdf.checkbox :cancer if fh.cancer == true
    pdf.text :other_family_history, fh.other
 
    #Medical History
    pdf.checkbox :blindness if mh.blindness == true
    pdf.checkbox :deafness if mh.deafness == true
    pdf.checkbox :vertigo if mh.vertigo == true
    pdf.checkbox :disc_bulge if mh.disc_bulge_cervical_spine == true
    pdf.checkbox :thyroid_disease if mh.thyroid_disease == true
    pdf.checkbox :asthma if mh.asthma == true
    pdf.checkbox :copd if mh.copd == true
    pdf.checkbox :heart_attack if mh.heart_attack == true
    pdf.checkbox :arrhythmia if mh.arrhythmia_pacemaker == true
    pdf.checkbox :congestive_heart_failure if mh.congestive_heart_failure == true
    pdf.checkbox :hypertension if mh.hypertension == true
    pdf.checkbox :congenital_condition if mh.congenital_condition == true
    pdf.checkbox :stents if mh.stents_bypass == true
    pdf.checkbox :blood_vessel_disease if mh.blood_vessel_disease == true
    if mh.other_heart
      pdf.checkbox :other_heart_check
      pdf.text :other_heart, mh.other_heart
    end
    if mh.ulcer == true
      pdf.checkbox :ulcer
      if mh.ulcer_healed 
        pdf.checkbox :ulcer_healed_yes
      else 
        pdf.checkbox :ulcer_healed_no
      end
    end
    pdf.checkbox :hiatal_hernia if mh.hiatal_hernia == true
    pdf.checkbox :liver_disease if mh.liver_disease == true
    pdf.checkbox :mh_kidney_disease if mh.kidney_disease == true
    pdf.checkbox :ibs if mh.irritable_bowel_disease == true
    pdf.checkbox :crohns if mh.chrons_disease == true
    pdf.checkbox :diverticulitis if mh.diverticulitis == true
    if mh.other_abdomen
      pdf.checkbox :other_abdomen_check
      pdf.text :other_abdomen, mh.other_abdomen
    end
    pdf.checkbox :stroke if mh.stroke == true
    pdf.checkbox :parkinsons if mh.parkinsons == true
    pdf.checkbox :paralysis if mh.paralysis == true
    pdf.checkbox :anemia if mh.anemia == true
    pdf.checkbox :clotting_problems if mh.clotting_problems == true
    pdf.checkbox :coumadin if mh.coumadin == true
    pdf.checkbox :neck_pain if mh.neck_pain == true
    pdf.checkbox :back_pain if mh.back_pain == true
    pdf.checkbox :osteoarthritis if mh.osteoarthritis == true
    pdf.checkbox :ms_rheumatoid_arthritis if mh.rheumatoid_arthritis == true
    pdf.checkbox :lupus if mh.lupus == true
    pdf.checkbox :depression if mh.depression == true
    pdf.checkbox :anxiety if mh.anxiety == true
    if mh.other_nervous_disorder
      pdf.checkbox :other_nd_check
      pdf.text :other_nervous_disorder, mh.other_nervous_disorder
    end
    pdf.checkbox :diabetes if mh.diabetes == true
    pdf.text :other_conditions, mh.other_medical_history

    #End Fields
    pdf.text :medication_history, "                                                    #{form.medication}"
    pdf.text :surgery_history, "           #{form.surgery_history}"

    if form.smoke
      pdf.checkbox :smoke_yes
    else 
      pdf.checkbox :smoke_no
    end

    if form.alcohol
      pdf.checkbox :alcohol_yes
    else 
      pdf.checkbox :alcohol_no
    end

    send_data(pdf.to_s, :filename => "output.pdf", :type => "application/pdf",:disposition => "inline")
  end

end
