class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780498799-g5f1482"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780498799-g5f1482/amp-darwin-arm64"
      sha256 "7857551546e9bcf4ff08c74ec20187c53274d70e7656294e99cc83af2ba8872a"
    else
      url "https://static.ampcode.com/cli/0.0.1780498799-g5f1482/amp-darwin-x64"
      sha256 "715bfbb9ac5d4418bbec62d50b52c7e8e94e9a8a1847fd2834299a727ac86b09"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780498799-g5f1482/amp-linux-arm64"
      sha256 "302b54071311431aeb44c541c7fbf52540d4a0f9e30b63c1178284d12420b41e"
    else
      url "https://static.ampcode.com/cli/0.0.1780498799-g5f1482/amp-linux-x64"
      sha256 "ff34d2a7d59b83fd127b4aabdbea3fd3a99ea6521b8b06fb276ce1eef0e4ef52"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
