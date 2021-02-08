@extends('layouts.app')

@section('title', 'Application form')

    @push('css')

    @endpush

@section('content')

    <div class="card-header bg-info text-lightblue d-flex justify-content-between align-items-center">
        <div>
            <a href="{{ route('welcome') }}" class="btn btn-light">
                <i class="fas fa-arrow-left"></i>
                Back</a>
        </div>
        <div>
            <h1 class="text-ligth">Fill out this form carefully</h1>
        </div>
    </div>
    <div class="card-body">
        {!! form($form) !!}
        {{-- <form role="form">

            <div class="row">
                <div class="col-sm-6">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Personal Information</h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>Applicant's Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Applicant's Name">
                            </div>

                            <div class="form-group">
                                <label>Father's Name</label>
                                <input type="text" class="form-control" name="father_name" placeholder="Father's Name">
                            </div>
                            <div class="form-group">
                                <label>Mother's Name</label>
                                <input type="text" class="form-control" name="mother_name" placeholder="Mother's Name">
                            </div>
                            <div class="form-group">
                                <label>Date of birth</label>
                                <input type="date" class="form-control" name="date_of_birth" placeholder="Date of birth">
                            </div>

                            <div class="form-group">
                                <label>Photo</label>
                                <input type="file" name="photo" class="form-control-file" placeholder="Upload image">
                            </div>
                            <div class="form-group">
                                <label>Signature</label>
                                <input type="file" name="signature" class="form-control-file" placeholder="Upload image">
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="phone_number" name="phone" class="form-control" placeholder="Phone Number">
                            </div>

                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" name="email" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label>Select Gender</label>
                                <select class="form-control" name="gender">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Employment Status</label>
                                <select class="form-control" name="employment_status">
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                                </select>
                            </div>


                            <div class="form-group">
                                <label>Employment Status</label>
                                <select class="form-control" name="employment_status">
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Employment Status</label>
                                <select class="form-control" name="employment_status">
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Employment Status</label>
                                <select class="form-control" name="employment_status">
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label>Employment Status</label>
                                <select class="form-control" name="employment_status">
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                                </select>
                            </div>






                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="phone_number" name="phone" class="form-control" placeholder="Phone Number">
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="phone_number" name="phone" class="form-control" placeholder="Phone Number">
                            </div>
                            <div class="form-group">
                                <label>Phone Number</label>
                                <input type="phone_number" name="phone" class="form-control" placeholder="Phone Number">
                            </div>


                        </div>

                    </div>


                    <div class="col-sm-6">
                        <div class="card card-light">
                            <div class="card-header">
                                <h3 class="card-title">Personal Information</h3>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" placeholder="Full Name">
                                </div>

                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" placeholder="Full Name">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" placeholder="Full Name">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" placeholder="Full Name">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" placeholder="Full Name">
                                </div>

                            </div>
                        </div>

                    </div>


                </div>


                <div class="row">
                    <div class="col-sm-6">
                        <!-- textarea -->
                        <div class="form-group">
                            <label>Textarea</label>
                            <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
                        </div>
                    </div>
                </div>

        </form> --}}
    </div>

@endsection

@push('js')

@endpush
