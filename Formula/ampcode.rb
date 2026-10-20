class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792524967-ga3dc9b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792524967-ga3dc9b/amp-darwin-arm64"
      sha256 "011da067902b1112882147e118aec0d85359ed86329cdd81433d9cf96c305815"
    else
      url "https://static.ampcode.com/cli/0.0.1792524967-ga3dc9b/amp-darwin-x64"
      sha256 "b8244c8a3b926ad3cebc44a70e0574f629f8bb551f056c707c0a903e4635fa97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792524967-ga3dc9b/amp-linux-arm64"
      sha256 "74063bb6c4e634ff0efd47fb3d9db28f2bcb6e14cf8ec57b2b69986c2b567f90"
    else
      url "https://static.ampcode.com/cli/0.0.1792524967-ga3dc9b/amp-linux-x64"
      sha256 "50166f067fed332d6b0d761a536a62fe01c2aee5108b3880ab0982bbb135c0d3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
