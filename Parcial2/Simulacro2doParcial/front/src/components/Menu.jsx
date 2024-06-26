import React from 'react'
import { Link } from 'react-router-dom';
import './styles.css'

// Componente menu
export default function Menu() {
    return (
        <div className="container_app">
            <h4>Desarrollo de Software</h4>
            <h6>Parcial 2/2024</h6>
            <nav className='btn-group mt-3 pb-1'>
                <Link className='btn btn-primary' to='/registro'>Registrar Reserva</Link>
            </nav>
        </div>
    );
}