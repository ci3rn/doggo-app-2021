import logo from '../doggo_logo.png';
import Badge from 'react-bootstrap/Badge';
import { connect } from 'react-redux';
import LoginButton from './LoginButton';
import LogoutButton from './LogoutButton';

const NavigationBar = (props) => {
    return <div className="navigation-bar">
        <img src={logo} alt="logo" />
        <Badge bg="bg badge">{props.doggos.length}+</Badge>
        <LoginButton />
        <LogoutButton />
    </div>;
};

const mapStateToProps = (state) => ({ doggos: state.doggos });

const ConnectedNavigationBar = connect(mapStateToProps)(NavigationBar);

export default ConnectedNavigationBar;