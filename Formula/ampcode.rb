class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794816357-gc47859"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794816357-gc47859/amp-darwin-arm64"
      sha256 "9f0ac0f731b11af7007d5f0dd5dbad717c9b59ea4f46a5610112eb9c241bc0a1"
    else
      url "https://static.ampcode.com/cli/0.0.1794816357-gc47859/amp-darwin-x64"
      sha256 "eb23ca5a2415b696b790e7e0b0a6945fe4e69e546c6413ba6da5f8913ee067d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794816357-gc47859/amp-linux-arm64"
      sha256 "1a1d6fbdb1ade849cec2afd8d864cf4dd5d8191c22a73334f949c48693e829c2"
    else
      url "https://static.ampcode.com/cli/0.0.1794816357-gc47859/amp-linux-x64"
      sha256 "6b694cf257938b4cd3889211de5ab54b4345bd144da76f57e99e831a8cdd7ce4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
