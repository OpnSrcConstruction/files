/***
    Copyright (c) 2015-2017 elementary LLC (http://launchpad.net/elementary)

    This program is free software: you can redistribute it and/or modify it
    under the terms of the GNU Lesser General Public License version 3, as published
    by the Free Software Foundation.

    This program is distributed in the hope that it will be useful, but
    WITHOUT ANY WARRANTY; without even the implied warranties of
    MERCHANTABILITY, SATISFACTORY QUALITY, or FITNESS FOR A PARTICULAR
    PURPOSE. See the GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along
    with this program. If not, see <http://www.gnu.org/licenses/>.

    Authors :
***/

namespace Marlin {
    public const string APP_ID = "io.elementary.files";
    public const string APP_DESKTOP = APP_ID + ".desktop";
    public const string APP_TITLE = N_("Files");
    public const string HELP_URL = "https://elementaryos.stackexchange.com/questions/tagged/pantheon-files";
    public const string BUG_URL = "https://github.com/elementary/files/issues/new";
    public const string INVALID_TAB_NAME = "----";

    public const string ICON_APP_LOGO = "system-file-manager";
    public const string ICON_FILESYSTEM = "drive-harddisk-system";
    public const string ICON_FILESYSTEM_SYMBOLIC = "drive-harddisk-symbolic";
    public const string ICON_FOLDER = "folder";
    public const string ICON_FOLDER_DOCUMENTS_SYMBOLIC = "folder-documents-symbolic";
    public const string ICON_FOLDER_DOWNLOADS_SYMBOLIC = "folder-download-symbolic";
    public const string ICON_FOLDER_MUSIC_SYMBOLIC = "folder-music-symbolic";
    public const string ICON_FOLDER_PICTURES_SYMBOLIC = "folder-pictures-symbolic";
    public const string ICON_FOLDER_PUBLICSHARE_SYMBOLIC = "folder-publicshare-symbolic";
    public const string ICON_FOLDER_REMOTE = "folder-remote";
    public const string ICON_FOLDER_REMOTE_SYMBOLIC = "folder-remote-symbolic";
    public const string ICON_FOLDER_TEMPLATES_SYMBOLIC = "folder-templates-symbolic";
    public const string ICON_FOLDER_VIDEOS_SYMBOLIC = "folder-videos-symbolic";
    public const string ICON_GO_HOME_SYMBOLIC = "go-home-symbolic";
    public const string ICON_HOME = "user-home";
    public const string ICON_NETWORK_SYMBOLIC = "network-workgroup-symbolic";
    public const string ICON_NETWORK = "network-workgroup";
    public const string ICON_NETWORK_SERVER_SYMBOLIC = "network-server-symbolic";
    public const string ICON_NETWORK_SERVER = "network-server";
    public const string ICON_TRASH = "user-trash";
    public const string ICON_TRASH_FULL = "user-trash-full";
    public const string ICON_TRASH_SYMBOLIC = "user-trash-symbolic";
    public const string ICON_RECENT = "document-open-recent";
    public const string ICON_RECENT_SYMBOLIC = "document-open-recent-symbolic";
    public const string ICON_PATHBAR_PRIMARY_FIND_SYMBOLIC = "edit-find-symbolic";
    public const string ICON_PATHBAR_PRIMARY_PATH_SYMBOLIC = "emblem-documents-symbolic";
    public const string ICON_PATHBAR_SECONDARY_NAVIGATE_SYMBOLIC = "go-jump-symbolic";
    public const string ICON_PATHBAR_SECONDARY_REFRESH_SYMBOLIC = "view-refresh-symbolic";
    public const string ICON_PATHBAR_SECONDARY_WORKING_SYMBOLIC = "process-working-symbolic";

    public const string OPEN_IN_TERMINAL_DESKTOP_ID = "open-pantheon-terminal-here.desktop";

    public const string PROTOCOL_NAME_AFP = _("AFP");
    public const string PROTOCOL_NAME_DAV = _("DAV");
    public const string PROTOCOL_NAME_DAVS = _("DAVS");
    public const string PROTOCOL_NAME_FTP = _("FTP");
    public const string PROTOCOL_NAME_NETWORK = _("Network");
    public const string PROTOCOL_NAME_SFTP = _("SFTP");
    public const string PROTOCOL_NAME_SMB = _("SMB");
    public const string PROTOCOL_NAME_TRASH = _("Trash");
    public const string PROTOCOL_NAME_RECENT = _("Recent");
    public const string PROTOCOL_NAME_MTP = _("MTP");
    public const string PROTOCOL_NAME_FILE = _("File System");

    public const double MINIMUM_LOCATION_BAR_ENTRY_WIDTH = 36;
    public const uint LOCATION_BAR_ANIMATION_TIME_MSEC = 300;
    public const uint FRAME_RATE_HZ = 60;
    public const uint BUTTON_LONG_PRESS = 300;

    public const int16 DEFAULT_POPUP_MENU_DISPLACEMENT = 2;

    public const string[] SKIP_IMAGES = {"image/svg+xml", "image/tiff", "image/jp2"};

    public string protocol_to_name (string protocol) {
        /* Deal with protocol with or without : or / characters at the end */
        string s = protocol.delimit (":/", ' ').chomp ();

        switch (s) {
            case "recent":
                return Marlin.PROTOCOL_NAME_RECENT;
            case "trash":
                return Marlin.PROTOCOL_NAME_TRASH;
            case "network":
                return Marlin.PROTOCOL_NAME_NETWORK;
            case "smb":
                return Marlin.PROTOCOL_NAME_SMB;
            case "ftp":
                return Marlin.PROTOCOL_NAME_FTP;
            case "sftp":
                return Marlin.PROTOCOL_NAME_SFTP;
            case "afp":
                return Marlin.PROTOCOL_NAME_AFP;
            case "dav":
                return Marlin.PROTOCOL_NAME_DAV;
            case "davs":
                return Marlin.PROTOCOL_NAME_DAVS;
            case "mtp":
                return Marlin.PROTOCOL_NAME_MTP;
            case "file":
                return Marlin.PROTOCOL_NAME_FILE;
            default:
                return protocol;
        }
    }

    public string name_to_protocol_uri (string pname) {
        /* Deal with protocol with or without : or / characters at the end */

        switch (pname.strip ()) {
            case Marlin.PROTOCOL_NAME_RECENT:
                return Marlin.RECENT_URI;
            case Marlin.PROTOCOL_NAME_TRASH:
                return Marlin.TRASH_URI;
            case Marlin.PROTOCOL_NAME_NETWORK:
                return Marlin.NETWORK_URI;
            case Marlin.PROTOCOL_NAME_SMB:
                return Marlin.SMB_URI;
            case Marlin.PROTOCOL_NAME_FTP:
                return Marlin.FTP_URI;
            case Marlin.PROTOCOL_NAME_SFTP:
                return Marlin.SFTP_URI;
            case  Marlin.PROTOCOL_NAME_AFP:
                return Marlin.AFP_URI;
            case Marlin.PROTOCOL_NAME_DAV:
                return Marlin.DAV_URI;
            case Marlin.PROTOCOL_NAME_DAVS:
                return Marlin.DAVS_URI;
            default:
                return "";
        }
    }

    public string sanitize_protocol (string p) {
        string pname = Marlin.protocol_to_name (p);
        return Marlin.name_to_protocol_uri (pname);
    }
}
