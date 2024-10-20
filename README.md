<h1>
  Text generator overview
</h1>
I developed a <b>Markov chain-based text generation</b> model in GNU Octave, utilizing various texts to train the model for coherent text generation.
I implemented a sliding window approach to enhance the model’s predictive capabilities by analyzing the last K tokens, allowing for context-aware word predictions.
<h3>
  Text Representation Using Markov Chains
</h3>
We can conceptualize a text as a <b>sequence of events</b>, where each event(node) represents a word. For example, the text "I went to the market and the store" can be represented as a Markov chain. In this chain, even though the word "the" appears twice, it is represented once, as it signifies a single state. The Markov chain can be interpreted as follows: after "I," "went" follows; after "and," "the" follows; after "the," it can lead to "market" or "store" with equal probability.
<h3>
  Method Description
</h3>
<ol>
<li><b>Training Set:</b> This dataset is used to train the model, composed of multiple texts (e.g., Tiny Shakespeare) that help construct the Markov chain.
</li>
  <li>
<b>Tokens:</b> Tokens are the first step in processing input data, obtained by extracting words from the text and removing punctuation. For instance, in the example "I went to the market and the store," the tokens are ["I," "went," "to," "the," "market," "and," "the," "store"]. The sequential nature of the task means we keep all tokens in order, even if they repeat.</li>

<li><b>K Sequences / Sliding K Window:</b> The Markov chain is simple, as the current state only depends on the last token. A deeper Markov chain predicts the next word using the last K states. 
  
  For example, with K = 2:
<ul>
<li>["I", "went"] → "to"</li>
<li>["went", "to"] → "the"</li>
<li>["to", "the"] → "market"</li>
<li>["the", "market"] → "and"</li>
<li>["market", "and"] → "the"</li>
</ul>

A sliding window of size 2 allows for contextual word prediction. The choice of K depends on the training set size; a larger dataset allows for a larger K. In this case, we'll use K = 2 due to a relatively small training set.</li>
<li><b>Features & Labels:</b> Before training, we must extract features from the dataset, which serve as a simple and efficient representation of the data. Each feature set is associated with a label that describes its meaning. A simple model representation is a function mapping features to labels: f(X) = y. Here, the features are K-sequences extracted from the tokens, and the labels are the subsequent words.
<br></br>
<ol><b>Training Set:</b> A dataset where each feature set has an associated label for the model to learn.</ol>
<br>
<ol><b>Testing Set:</b> A dataset where we aim to predict the label for each feature set, testing the model's performance.</ol></li>
</ol>
