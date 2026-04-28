class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777402942-g6a3a50"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777402942-g6a3a50/amp-darwin-arm64"
      sha256 "5471fa6e218606992802599ffc5b82317ccb8fc98c653a3f86a7a4ab4613dd1e"
    else
      url "https://static.ampcode.com/cli/0.0.1777402942-g6a3a50/amp-darwin-x64"
      sha256 "3e3c03580f1562088fe4e066e3dbe8a2678cb35d8f13b4a146d1faac67445dad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777402942-g6a3a50/amp-linux-arm64"
      sha256 "59a899d15d65ee02f5707505077bd8fd5c67746dbab1482aebca89dc21e7854c"
    else
      url "https://static.ampcode.com/cli/0.0.1777402942-g6a3a50/amp-linux-x64"
      sha256 "8190ed75c75a3991896427bda4fefff55f739c24d6da69caa52edf46274e1c67"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
