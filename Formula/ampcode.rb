class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777680871-g5fc25d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777680871-g5fc25d/amp-darwin-arm64"
      sha256 "b30fcf913a5d9cb45c2fb2c5385c7da905c2d59e97471183b0c72f7a6a7f13b9"
    else
      url "https://static.ampcode.com/cli/0.0.1777680871-g5fc25d/amp-darwin-x64"
      sha256 "f5b1ceab398a34ecd2f91a0f9f6b4e68bd4ccfafff6719db6f676e407bac67b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777680871-g5fc25d/amp-linux-arm64"
      sha256 "ef2f4f1a90efdbf25b43637c1721e784c79990182ac7b2a5e310fc24d47f8795"
    else
      url "https://static.ampcode.com/cli/0.0.1777680871-g5fc25d/amp-linux-x64"
      sha256 "9ea1b2721662515806a926bf06909ffea6fce783e58ce3d5def14d77c1828ee3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
