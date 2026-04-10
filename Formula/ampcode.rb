class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775858174-gb0bac6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775858174-gb0bac6/amp-darwin-arm64"
      sha256 "e3d6b4d3fbd694897f275956e2facb32a33193ee6a2f9f1408c5357159531191"
    else
      url "https://static.ampcode.com/cli/0.0.1775858174-gb0bac6/amp-darwin-x64"
      sha256 "d136e129d610eea5f53ce00874e67732ef4c26f783cd42aa3b9e24d70ee96242"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775858174-gb0bac6/amp-linux-arm64"
      sha256 "222c22fa1356bf78ccbc2e0e7e095174db0c33d02aaae3748f6de55b059fb63b"
    else
      url "https://static.ampcode.com/cli/0.0.1775858174-gb0bac6/amp-linux-x64"
      sha256 "c530691c5eee1f0e57a92bd7564ea9d38d8aae817a004348df9ff5d1d8d24fda"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
