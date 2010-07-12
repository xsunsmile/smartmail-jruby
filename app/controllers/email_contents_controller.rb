class EmailContentsController < ApplicationController
  # GET /email_contents
  # GET /email_contents.xml
  def index
    @email_contents = EmailContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @email_contents }
    end
  end

  # GET /email_contents/1
  # GET /email_contents/1.xml
  def show
    @email_content = EmailContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @email_content }
    end
  end

  # GET /email_contents/new
  # GET /email_contents/new.xml
  def new
    @email_content = EmailContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @email_content }
    end
  end

  # GET /email_contents/1/edit
  def edit
    @email_content = EmailContent.find(params[:id])
  end

  # POST /email_contents
  # POST /email_contents.xml
  def create
    @email_content = EmailContent.new(params[:email_content])

    respond_to do |format|
      if @email_content.save
        format.html { redirect_to(@email_content, :notice => 'EmailContent was successfully created.') }
        format.xml  { render :xml => @email_content, :status => :created, :location => @email_content }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @email_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /email_contents/1
  # PUT /email_contents/1.xml
  def update
    @email_content = EmailContent.find(params[:id])

    respond_to do |format|
      if @email_content.update_attributes(params[:email_content])
        format.html { redirect_to(@email_content, :notice => 'EmailContent was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @email_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /email_contents/1
  # DELETE /email_contents/1.xml
  def destroy
    @email_content = EmailContent.find(params[:id])
    @email_content.destroy

    respond_to do |format|
      format.html { redirect_to(email_contents_url) }
      format.xml  { head :ok }
    end
  end
end
