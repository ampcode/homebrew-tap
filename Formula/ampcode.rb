class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779322867-gb57827"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779322867-gb57827/amp-darwin-arm64"
      sha256 "fc8ba5143cb35905614afc0e1a6dc5996b0e0e4e0a40c719175ac5acdf0f993f"
    else
      url "https://static.ampcode.com/cli/0.0.1779322867-gb57827/amp-darwin-x64"
      sha256 "a11c0c36a4068738c70b45c468f10f6dd4d83cb8561c72b0f443362603fe3631"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779322867-gb57827/amp-linux-arm64"
      sha256 "9a3dca9c67f02dd98041e90ec95d6ae80f954b705fac711cbb4e0919b073224a"
    else
      url "https://static.ampcode.com/cli/0.0.1779322867-gb57827/amp-linux-x64"
      sha256 "f4cc2775242e309410732cd318fdf2423ec733788faddab25594c32864db211e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
