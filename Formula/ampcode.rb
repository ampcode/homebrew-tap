class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789726672-g9944f8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789726672-g9944f8/amp-darwin-arm64"
      sha256 "92c9a28506901b08c0f37c381ec2a769162e8c9ef330718fc70c50686ccc6f5b"
    else
      url "https://static.ampcode.com/cli/0.0.1789726672-g9944f8/amp-darwin-x64"
      sha256 "f2a4d976fb7268cd2f8573750043baa866657305c2b13341eb7a8441bd890744"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789726672-g9944f8/amp-linux-arm64"
      sha256 "650236c438bed2f4127cbac8df935e4610f5925f88e6e0992579f86bd97859f1"
    else
      url "https://static.ampcode.com/cli/0.0.1789726672-g9944f8/amp-linux-x64"
      sha256 "d4a4d5268753cb73ada2aa88c25b05baf625fdef9b78193de5c88146979d25a2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
