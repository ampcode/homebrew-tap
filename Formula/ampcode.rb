class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794945632-gf6a800"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794945632-gf6a800/amp-darwin-arm64"
      sha256 "7174d01ada35ff3803ca51f904bb1dd9de89ff1e81301717a93c74730c77967d"
    else
      url "https://static.ampcode.com/cli/0.0.1794945632-gf6a800/amp-darwin-x64"
      sha256 "e5f530d123081ac356c9966cdd158a697a9e8bbcde582852d57bc4075efd5b81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794945632-gf6a800/amp-linux-arm64"
      sha256 "e9deb990603863060476b34b6468155a44746520793ca118328f6c212b873596"
    else
      url "https://static.ampcode.com/cli/0.0.1794945632-gf6a800/amp-linux-x64"
      sha256 "af326e990ff41c8765638bb24fcd94bfa09173ac588a01195f87ad3cbcaaf6df"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
