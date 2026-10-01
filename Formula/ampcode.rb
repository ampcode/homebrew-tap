class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790820109-g3273db"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790820109-g3273db/amp-darwin-arm64"
      sha256 "591b3e1fc2b422a7f999363cceced8345094057c468945c2ed576f24ddc798a7"
    else
      url "https://static.ampcode.com/cli/0.0.1790820109-g3273db/amp-darwin-x64"
      sha256 "001c28f2c28949d8a126ae849baca3e92bb144c3a63e7c1b982eb71699725bc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790820109-g3273db/amp-linux-arm64"
      sha256 "a0b7974065702c67722a0697b5f413501799312427e19fc542fe4d2ae00378b7"
    else
      url "https://static.ampcode.com/cli/0.0.1790820109-g3273db/amp-linux-x64"
      sha256 "daced57a19121ca8dc8fe650364ab040fe40394fc96d7a1c462a5b9b94f958af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
