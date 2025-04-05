import type { User } from '../../types/user';
import './styles.css';

interface UserCardProps {
  user: User;
}

export function UserCard({ user }: UserCardProps) {
  // TODO: Implement the user card component, display user name, email, and company name
  return (
    <div className="user-card">
      {/* TODO: Display user information here */}
    </div>
  );
} 