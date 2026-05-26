class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779827799-g440287"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779827799-g440287/amp-darwin-arm64"
      sha256 "7c8565e0110bca923602ea6b372a1b6c5f451b7a41d16dd99b5733ccf0b3350a"
    else
      url "https://static.ampcode.com/cli/0.0.1779827799-g440287/amp-darwin-x64"
      sha256 "b1536c912fbf030fc21d0e30f81936771e94f265e15b0a3fda076901ebe0d9e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779827799-g440287/amp-linux-arm64"
      sha256 "47b852704be931ef2b2e7d5221ddb0df94053f2914a3ce240865d52818c6c794"
    else
      url "https://static.ampcode.com/cli/0.0.1779827799-g440287/amp-linux-x64"
      sha256 "5eb43f6b5d340431fc0f2c1ad76bf2f00b214967e9943f71303f076a7a06f46a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
