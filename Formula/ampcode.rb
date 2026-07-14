class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783988119-g312f7e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783988119-g312f7e/amp-darwin-arm64"
      sha256 "38d5b95b55ee0c7176cd79b652bb6f8d8e94f70c3f91c6aabb13863e834468bb"
    else
      url "https://static.ampcode.com/cli/0.0.1783988119-g312f7e/amp-darwin-x64"
      sha256 "e5ca613c74756061b632068bc26c3096d799414a968701fb03aa050a72b8f582"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783988119-g312f7e/amp-linux-arm64"
      sha256 "444e99a4ef1c89a59e17f4551b216c69569cc6a4914d515158a51f183855c6b7"
    else
      url "https://static.ampcode.com/cli/0.0.1783988119-g312f7e/amp-linux-x64"
      sha256 "7765ebcee5fd1834fd4bcb8568c310467b2e87fc39df7e29b422cd3ed02de7e8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
