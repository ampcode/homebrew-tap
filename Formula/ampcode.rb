class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779153253-gb08bda"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779153253-gb08bda/amp-darwin-arm64"
      sha256 "1ace147c62458b813d311f97bf0b30856fba0c7af7ee732b7c7dad88c718d85b"
    else
      url "https://static.ampcode.com/cli/0.0.1779153253-gb08bda/amp-darwin-x64"
      sha256 "5a1142e0bbbc58b23534307fa693d98aa2b8b8e70b7b41ceadba42806c1b0e12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779153253-gb08bda/amp-linux-arm64"
      sha256 "661200576ce1202a2a798e4a6c808f1086b8566e73e532679b5af4648cf3cace"
    else
      url "https://static.ampcode.com/cli/0.0.1779153253-gb08bda/amp-linux-x64"
      sha256 "3c4eda108b0ec5fcd4aa128437704f7c6bb65efc06ab77f66f4deab2d583af46"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
